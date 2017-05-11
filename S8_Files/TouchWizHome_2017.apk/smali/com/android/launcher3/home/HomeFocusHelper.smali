.class Lcom/android/launcher3/home/HomeFocusHelper;
.super Ljava/lang/Object;
.source "HomeFocusHelper.java"


# static fields
.field static final ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final DEBUG:Z = false

.field static final HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final TAG:Ljava/lang/String; = "HomeFocusHelper"

.field static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 48
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 55
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 62
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 69
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 76
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 83
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 90
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    .line 97
    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alignTop"    # Z
    .param p2, "deleteButton"    # Z
    .param p3, "zeroPageSwitch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 674
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    .line 675
    .local v3, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 676
    if-eqz p2, :cond_0

    .line 677
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v4

    .line 692
    :goto_0
    return-object v4

    .line 678
    :cond_0
    if-eqz p3, :cond_1

    .line 679
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    goto :goto_0

    .line 682
    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    .line 683
    .local v1, "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 684
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 685
    .local v2, "alignLayoutTop":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 686
    .local v0, "alignLayoutBottom":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 687
    if-eqz p1, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    .line 692
    .end local v0    # "alignLayoutBottom":Landroid/widget/LinearLayout;
    .end local v1    # "alignLayoutList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .end local v2    # "alignLayoutTop":Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    .line 666
    .local v0, "homeController":Lcom/android/launcher3/home/HomeController;
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v1

    .line 669
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 222
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 223
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v8, :cond_0

    if-nez v2, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v2

    .line 227
    :cond_1
    invoke-static {p0, v8, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 228
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v9, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v9, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    .line 230
    .local v6, "pageDeleteButton":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0f0078

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 232
    .local v3, "homeButton":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 236
    const/4 v4, 0x0

    .line 237
    .local v4, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 283
    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 285
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 239
    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 240
    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 241
    move-object v4, v1

    goto :goto_1

    .line 242
    :cond_3
    if-eqz v6, :cond_4

    .line 243
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    .line 244
    move-object v4, v6

    goto :goto_1

    .line 245
    :cond_4
    if-eqz v3, :cond_2

    .line 246
    move-object v4, v3

    goto :goto_1

    .line 248
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    if-eqz v3, :cond_2

    .line 250
    move-object v4, v3

    goto :goto_1

    .line 257
    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 258
    if-eqz v6, :cond_6

    .line 259
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 260
    move-object v4, v6

    goto :goto_1

    .line 261
    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 262
    move-object v4, v0

    goto :goto_1

    .line 264
    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 265
    .local v5, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_2

    .line 266
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 269
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 271
    .restart local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_2

    .line 272
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 277
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 278
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 334
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 335
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v9, :cond_0

    if-nez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_2

    .line 340
    const/16 v7, 0x15

    if-ne p1, v7, :cond_4

    .line 341
    const/16 p1, 0x16

    .line 347
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 348
    .local v3, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 381
    :cond_3
    :goto_2
    :sswitch_0
    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 383
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 342
    .end local v3    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v7, 0x16

    if-ne p1, v7, :cond_2

    .line 343
    const/16 p1, 0x15

    goto :goto_1

    .line 352
    .restart local v3    # "newIcon":Landroid/view/View;
    :sswitch_1
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 353
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 354
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v8, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 355
    .local v6, "zeroPageSwitch":Landroid/widget/LinearLayout;
    invoke-static {p0, v8, v9, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v5

    .line 356
    .local v5, "pageDeleteButton":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 357
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 358
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 359
    move-object v3, v1

    goto :goto_2

    .line 360
    :cond_6
    if-eqz v5, :cond_7

    .line 361
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    .line 362
    move-object v3, v5

    goto :goto_2

    .line 363
    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 364
    move-object v3, v0

    goto :goto_2

    .line 366
    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 367
    .local v4, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v4, :cond_3

    .line 368
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 375
    .end local v0    # "alignButtonBottom":Landroid/widget/ImageView;
    .end local v1    # "alignButtonTop":Landroid/widget/ImageView;
    .end local v4    # "overviewPanel":Landroid/widget/LinearLayout;
    .end local v5    # "pageDeleteButton":Landroid/view/View;
    .end local v6    # "zeroPageSwitch":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 376
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v10

    .line 112
    .local v10, "consume":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_0

    if-nez v10, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v10

    .line 116
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v17

    .line 125
    .local v17, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 126
    .local v12, "hotseatParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v12, :cond_0

    .line 130
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 132
    .local v11, "hotseatLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v19, 0x7f0f0004

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/Workspace;

    .line 133
    .local v18, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    .line 134
    .local v7, "pageIndex":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    .line 135
    .local v8, "pageCount":I
    const/4 v3, -0x1

    .line 136
    .local v3, "countX":I
    const/4 v4, -0x1

    .line 137
    .local v4, "countY":I
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 139
    .local v6, "iconIndex":I
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 140
    .local v13, "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    if-eqz v13, :cond_0

    .line 147
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v14

    .line 148
    .local v14, "iconParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    if-eqz v14, :cond_0

    .line 152
    const/4 v9, 0x0

    .line 153
    .local v9, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/4 v5, 0x0

    check-cast v5, [[I

    .line 155
    .local v5, "matrix":[[I
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    const/4 v2, 0x1

    invoke-static {v13, v11, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 159
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 160
    array-length v3, v5

    .line 161
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v19

    add-int v4, v2, v19

    .line 162
    move-object v9, v14

    :goto_1
    move/from16 v2, p1

    .line 184
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v16

    .line 187
    .local v16, "newIconIndex":I
    const/4 v15, 0x0

    .line 188
    .local v15, "newIcon":Landroid/view/View;
    const/4 v2, -0x8

    move/from16 v0, v16

    if-ne v0, v2, :cond_8

    .line 189
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 190
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 193
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 205
    :cond_2
    :goto_2
    if-ne v9, v14, :cond_3

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_3

    .line 206
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v16, v16, v2

    .line 208
    :cond_3
    if-nez v15, :cond_4

    if-ltz v16, :cond_4

    .line 209
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 211
    :cond_4
    if-eqz v15, :cond_0

    .line 212
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 213
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 163
    .end local v15    # "newIcon":Landroid/view/View;
    .end local v16    # "newIconIndex":I
    :cond_5
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 164
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 165
    const/4 v2, 0x0

    invoke-static {v13, v11, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 167
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    .line 168
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v19

    add-int v3, v2, v19

    .line 169
    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 170
    move-object v9, v14

    goto :goto_1

    .line 171
    :cond_6
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 172
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    const/16 p1, 0x5d

    goto :goto_1

    .line 177
    :cond_7
    invoke-static {v11}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    .line 178
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 179
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 180
    move-object v9, v12

    goto/16 :goto_1

    .line 194
    .restart local v15    # "newIcon":Landroid/view/View;
    .restart local v16    # "newIconIndex":I
    :cond_8
    const/4 v2, -0x4

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 195
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 196
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 197
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 198
    :cond_9
    const/16 v2, -0xb

    move/from16 v0, v16

    if-ne v0, v2, :cond_a

    .line 199
    const/4 v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 200
    :cond_a
    const/4 v2, -0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_2

    .line 201
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 202
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 203
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2
.end method

.method private static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 30
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 527
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v18

    .line 528
    .local v18, "consume":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_0

    if-nez v18, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v18

    .line 532
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/Launcher;

    .line 533
    .local v24, "launcher":Lcom/android/launcher3/Launcher;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v27

    .line 541
    .local v27, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 542
    .local v9, "parent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 543
    .local v23, "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    check-cast v29, Lcom/android/launcher3/home/Workspace;

    .line 544
    .local v29, "workspace":Lcom/android/launcher3/home/Workspace;
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 545
    .local v19, "dragLayer":Landroid/view/ViewGroup;
    const v2, 0x7f0f0003

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/home/Hotseat;

    .line 547
    .local v20, "hotseat":Lcom/android/launcher3/home/Hotseat;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 548
    .local v6, "iconIndex":I
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    .line 549
    .local v7, "pageIndex":I
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    .line 550
    .local v8, "pageCount":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    .line 551
    .local v3, "countX":I
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    .line 553
    .local v4, "countY":I
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 554
    .local v21, "hotseatLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v22

    .line 560
    .local v22, "hotseatParent":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_3

    .line 561
    const/4 v2, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 562
    .local v5, "matrix":[[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    add-int/2addr v4, v2

    :goto_1
    move/from16 v2, p1

    .line 575
    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v26

    .line 577
    .local v26, "newIconIndex":I
    const/16 v25, 0x0

    .line 578
    .local v25, "newIcon":Landroid/view/View;
    packed-switch v26, :pswitch_data_0

    .line 649
    if-ltz v26, :cond_9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_9

    .line 650
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 657
    :cond_2
    :goto_2
    :pswitch_0
    if-eqz v25, :cond_0

    .line 658
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->requestFocus()Z

    .line 659
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    .line 563
    .end local v5    # "matrix":[[I
    .end local v25    # "newIcon":Landroid/view/View;
    .end local v26    # "newIconIndex":I
    :cond_3
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 564
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 565
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    .line 566
    .restart local v5    # "matrix":[[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 567
    .end local v5    # "matrix":[[I
    :cond_4
    const/16 v2, 0x43

    move/from16 v0, p1

    if-eq v0, v2, :cond_5

    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 568
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    goto/16 :goto_0

    .line 571
    :cond_6
    invoke-static/range {v23 .. v23}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    .restart local v5    # "matrix":[[I
    goto :goto_1

    .line 583
    .restart local v25    # "newIcon":Landroid/view/View;
    .restart local v26    # "newIconIndex":I
    :pswitch_1
    add-int/lit8 v15, v7, -0x1

    .line 584
    .local v15, "newPageIndex":I
    const/16 v2, -0xa

    move/from16 v0, v26

    if-ne v0, v2, :cond_7

    .line 585
    add-int/lit8 v15, v7, 0x1

    .line 587
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v28, v0

    .line 588
    .local v28, "row":I
    move-object/from16 v0, v29

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 589
    if-eqz v9, :cond_2

    .line 590
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 591
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .end local v23    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 593
    .restart local v23    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    .line 592
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    .line 594
    add-int/lit8 v11, v3, 0x1

    const/16 v14, 0x64

    move/from16 v10, p1

    move v12, v4

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v26

    .line 596
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 597
    if-nez v25, :cond_2

    .line 598
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    .line 603
    .end local v15    # "newPageIndex":I
    .end local v28    # "row":I
    :pswitch_2
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 604
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 605
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 608
    :pswitch_3
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 609
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 610
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 613
    :pswitch_4
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 614
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 615
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 619
    :pswitch_5
    add-int/lit8 v15, v7, 0x1

    .line 620
    .restart local v15    # "newPageIndex":I
    const/4 v2, -0x5

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    .line 621
    add-int/lit8 v15, v7, -0x1

    .line 623
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v28, v0

    .line 624
    .restart local v28    # "row":I
    move-object/from16 v0, v29

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    .line 625
    if-eqz v9, :cond_2

    .line 626
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    .line 627
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    .end local v23    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout;

    .line 628
    .restart local v23    # "iconLayout":Lcom/android/launcher3/common/base/view/CellLayout;
    const/4 v2, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    .line 629
    add-int/lit8 v11, v3, 0x1

    const/16 v14, 0x64

    move/from16 v10, p1

    move v12, v4

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v26

    .line 631
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 632
    if-nez v25, :cond_2

    .line 633
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    .line 638
    .end local v15    # "newPageIndex":I
    .end local v28    # "row":I
    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 639
    goto/16 :goto_2

    .line 641
    :pswitch_7
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 642
    goto/16 :goto_2

    .line 644
    :pswitch_8
    const/4 v2, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 651
    :cond_9
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v26

    if-gt v2, v0, :cond_2

    .line 652
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    add-int/2addr v2, v10

    move/from16 v0, v26

    if-ge v0, v2, :cond_2

    .line 653
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v2, v26, v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    goto/16 :goto_2

    .line 578
    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 393
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v3

    .line 394
    .local v3, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eq v10, v12, :cond_0

    if-nez v3, :cond_1

    .line 460
    :cond_0
    :goto_0
    return v3

    .line 398
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 399
    .local v7, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    .line 403
    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_2

    .line 404
    const/16 v10, 0x15

    if-ne p1, v10, :cond_4

    .line 405
    const/16 p1, 0x16

    .line 411
    :cond_2
    :goto_1
    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 412
    .local v5, "index":I
    const/4 v6, 0x0

    .line 413
    .local v6, "newIcon":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 455
    :cond_3
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_0

    .line 456
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 457
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 406
    .end local v5    # "index":I
    .end local v6    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v10, 0x16

    if-ne p1, v10, :cond_2

    .line 407
    const/16 p1, 0x15

    goto :goto_1

    .line 415
    .restart local v5    # "index":I
    .restart local v6    # "newIcon":Landroid/view/View;
    :pswitch_1
    invoke-static {p0, v12, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 416
    .local v1, "alignButtonTop":Landroid/widget/ImageView;
    invoke-static {p0, v11, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 417
    .local v0, "alignButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0, v11, v11, v12}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 418
    .local v9, "zeroPageSwitch":Landroid/widget/LinearLayout;
    invoke-static {p0, v11, v12, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v8

    .line 419
    .local v8, "pageDeleteButton":Landroid/view/View;
    if-eqz v9, :cond_5

    .line 420
    move-object v6, v9

    goto :goto_2

    .line 421
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 422
    move-object v6, v0

    goto :goto_2

    .line 423
    :cond_6
    if-eqz v8, :cond_7

    .line 424
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_7

    .line 425
    move-object v6, v8

    goto :goto_2

    .line 426
    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 427
    move-object v6, v1

    goto :goto_2

    .line 429
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0f0078

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 430
    .local v4, "homeButton":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 431
    move-object v6, v4

    goto :goto_2

    .line 436
    .end local v0    # "alignButtonBottom":Landroid/widget/ImageView;
    .end local v1    # "alignButtonTop":Landroid/widget/ImageView;
    .end local v4    # "homeButton":Landroid/view/View;
    .end local v8    # "pageDeleteButton":Landroid/view/View;
    .end local v9    # "zeroPageSwitch":Landroid/widget/LinearLayout;
    :pswitch_2
    if-eqz v5, :cond_3

    .line 437
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 438
    .local v2, "childView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 440
    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 445
    .end local v2    # "childView":Landroid/view/View;
    :pswitch_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 446
    .restart local v2    # "childView":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 447
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 448
    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 413
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 467
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    .line 468
    .local v2, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v9, :cond_0

    if-nez v2, :cond_1

    const/16 v6, 0x42

    if-eq p1, v6, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v2

    .line 473
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0f0078

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 475
    .local v3, "homeButton":Landroid/view/View;
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    .line 476
    const/16 v6, 0x15

    if-ne p1, v6, :cond_4

    .line 477
    const/16 p1, 0x16

    .line 483
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .line 484
    .local v4, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 516
    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    .line 517
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 518
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 478
    .end local v4    # "newIcon":Landroid/view/View;
    :cond_4
    const/16 v6, 0x16

    if-ne p1, v6, :cond_2

    .line 479
    const/16 p1, 0x15

    goto :goto_1

    .line 486
    .restart local v4    # "newIcon":Landroid/view/View;
    :sswitch_0
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 487
    .local v0, "alignButtonTop":Landroid/widget/ImageView;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 488
    move-object v4, v0

    goto :goto_2

    .line 489
    :cond_5
    if-eqz v3, :cond_3

    .line 490
    move-object v4, v3

    goto :goto_2

    .line 494
    .end local v0    # "alignButtonTop":Landroid/widget/ImageView;
    :sswitch_1
    if-eqz v3, :cond_3

    .line 495
    move-object v4, v3

    goto :goto_2

    .line 501
    :sswitch_2
    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 502
    .local v1, "alingButtonBottom":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 503
    .local v5, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 504
    move-object v4, v1

    goto :goto_2

    .line 505
    :cond_6
    if-eqz v5, :cond_3

    .line 506
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    .line 510
    .end local v1    # "alingButtonBottom":Landroid/widget/ImageView;
    .end local v5    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 511
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    .line 484
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_2
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x16

    const/16 v8, 0x15

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 733
    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_2

    :cond_0
    move v1, v5

    .line 736
    .local v1, "consume":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v5, :cond_1

    if-nez v1, :cond_3

    .line 782
    :cond_1
    :goto_1
    return v1

    .end local v1    # "consume":Z
    :cond_2
    move v1, v6

    .line 733
    goto :goto_0

    .line 740
    .restart local v1    # "consume":Z
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    .line 741
    .local v3, "homeController":Lcom/android/launcher3/home/HomeController;
    const/4 v2, 0x0

    .line 743
    .local v2, "gridBtnLayout":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 744
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 747
    :cond_4
    if-eqz v2, :cond_1

    .line 751
    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_5

    .line 752
    if-ne p1, v8, :cond_6

    .line 753
    const/16 p1, 0x16

    .line 759
    :cond_5
    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 761
    .local v4, "index":I
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 763
    :pswitch_0
    if-eqz v4, :cond_1

    .line 764
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 765
    .local v0, "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 766
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 767
    invoke-virtual {v0, v6}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 754
    .end local v0    # "childView":Landroid/view/View;
    .end local v4    # "index":I
    :cond_6
    if-ne p1, v9, :cond_5

    .line 755
    const/16 p1, 0x15

    goto :goto_2

    .line 772
    .restart local v4    # "index":I
    :pswitch_1
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 773
    .restart local v0    # "childView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 775
    invoke-virtual {v0, v6}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    .line 761
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 699
    const/16 v5, 0x14

    if-eq p1, v5, :cond_0

    const/16 v5, 0x3d

    if-ne p1, v5, :cond_2

    :cond_0
    move v0, v3

    .line 702
    .local v0, "consume":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    if-nez v0, :cond_3

    .line 726
    :cond_1
    :goto_1
    return v0

    .end local v0    # "consume":Z
    :cond_2
    move v0, v4

    .line 699
    goto :goto_0

    .line 706
    .restart local v0    # "consume":Z
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    .line 707
    .local v2, "homeController":Lcom/android/launcher3/home/HomeController;
    const/4 v1, 0x0

    .line 709
    .local v1, "gridBtnLayout":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 710
    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 713
    :cond_4
    if-eqz v1, :cond_1

    .line 717
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 720
    :sswitch_0
    if-eqz v1, :cond_1

    .line 721
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 722
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 717
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v0

    .line 295
    .local v0, "consume":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-nez v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 299
    :cond_1
    const/4 v2, 0x0

    .line 300
    .local v2, "newIcon":Landroid/view/View;
    sparse-switch p1, :sswitch_data_0

    .line 323
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 325
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    .line 303
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0f0078

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 304
    .local v1, "homeButton":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 305
    move-object v2, v1

    goto :goto_1

    .line 311
    .end local v1    # "homeButton":Landroid/view/View;
    :sswitch_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 312
    .local v3, "overviewPanel":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_2

    .line 313
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    .line 317
    .end local v3    # "overviewPanel":Landroid/widget/LinearLayout;
    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    .line 318
    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

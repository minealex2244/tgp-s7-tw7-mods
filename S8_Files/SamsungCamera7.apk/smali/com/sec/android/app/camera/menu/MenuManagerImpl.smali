.class public Lcom/sec/android/app/camera/menu/MenuManagerImpl;
.super Ljava/lang/Object;
.source "MenuManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuManager;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuManager"

.field private static final mMenuOrderMap:Landroid/util/SparseIntArray;

.field private static final mMenusLock:Ljava/lang/Object;

.field private static final mViewStackLock:Ljava/lang/Object;


# instance fields
.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

.field private mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mMenuCreateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

.field private mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mMenus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

.field private mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

.field private mShootingModeControllerGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mShootingModeViewGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/glview/GLViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/menu/AbstractMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

.field private mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;

    invoke-direct {v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuResourceDepot;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;)V
    .locals 6
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p4, "rootView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p5, "shootingMode"    # Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    .line 98
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuCreateListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 104
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 120
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 121
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 122
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 123
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 124
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 125
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_WIDTH:I

    int-to-float v4, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->SCREEN_HEIGHT:I

    int-to-float v5, v3

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 135
    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 137
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 138
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 139
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 140
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    return-object v0
.end method

.method private clearAllMenus()V
    .locals 6

    .prologue
    .line 943
    const-string v4, "MenuManager"

    const-string v5, "clearAllMenus"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 946
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 947
    monitor-exit v5

    .line 967
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 951
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    const/4 v3, 0x0

    .line 953
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 954
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 956
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 957
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 958
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 959
    if-eqz v1, :cond_1

    .line 960
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 962
    :cond_1
    const-string v4, "MenuManager"

    const-string v5, "clearing..."

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 958
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 964
    :cond_2
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 965
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 966
    monitor-exit v5

    goto :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v4
.end method

.method private clearInactiveShootingModeViews()V
    .locals 8

    .prologue
    .line 970
    const-string v5, "MenuManager"

    const-string v6, "clearInactiveShootingModeViews"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 972
    .local v3, "shootingModeViewGroupsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/glview/GLViewGroup;>;"
    const/4 v2, 0x0

    .line 973
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 974
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 975
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    .line 976
    .local v4, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 977
    const-string v5, "MenuManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearing shooting mode views - id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 979
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 980
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 983
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 984
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 973
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 987
    .end local v4    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    return-void
.end method

.method private clearInvisibleViews()V
    .locals 7

    .prologue
    .line 990
    const-string v4, "MenuManager"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 993
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 994
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    const/4 v3, 0x0

    .line 996
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 997
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 999
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1000
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 1001
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1002
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1003
    const-string v4, "MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getMenuId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1005
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 996
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1001
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1009
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 1010
    return-void
.end method

.method private clearShootingModeViewGroup()V
    .locals 5

    .prologue
    .line 1013
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1017
    :cond_0
    const/4 v2, 0x0

    .line 1018
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1019
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1020
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 1021
    .local v3, "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v3, :cond_1

    .line 1022
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1023
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 1024
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 1018
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1029
    .end local v3    # "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1030
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method private closeVisibleViews()V
    .locals 6

    .prologue
    .line 1034
    const-string v4, "MenuManager"

    const-string v5, "closeVisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1037
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 1038
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    const/4 v3, 0x0

    .line 1040
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1041
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1043
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1044
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 1045
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1046
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1047
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 1040
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    .end local v0    # "i":I
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v3    # "menuId":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1045
    .restart local v0    # "i":I
    .restart local v2    # "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "menuId":I
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 1050
    :cond_1
    return-void
.end method

.method private isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 1054
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1072
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1070
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1054
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0x3d -> :sswitch_0
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x7f -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x85 -> :sswitch_0
        0x96 -> :sswitch_0
        0xbe0 -> :sswitch_0
        0xbe1 -> :sswitch_0
    .end sparse-switch
.end method

.method private removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 1077
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 1079
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1080
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1081
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getMenuId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1082
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1083
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getMenuId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 1084
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1088
    :goto_0
    return-void

    .line 1079
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_0
.end method


# virtual methods
.method public collapseMenu()V
    .locals 6

    .prologue
    .line 149
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 151
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 154
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getMenuId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->hideMenu(I)V

    .line 156
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 158
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collapseMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_0
    return-void

    .line 151
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public createMenu(I)V
    .locals 21
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    const/16 v20, 0x0

    .line 170
    .local v20, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 172
    monitor-exit v4

    move-object/from16 v8, v20

    .line 353
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v8, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_0
    return-void

    .line 174
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMenu start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sparse-switch p1, :sswitch_data_0

    .line 337
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 180
    :sswitch_0
    new-instance v2, Lcom/sec/android/app/camera/menu/BaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    .line 181
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/BaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 182
    check-cast v3, Lcom/sec/android/app/camera/menu/BaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 184
    .local v18, "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$2;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v20

    .line 340
    .end local v18    # "initialShootingMode":I
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_1
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuCreateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;

    .line 349
    .local v19, "listener":Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;->onMenuCreated(ILcom/sec/android/app/camera/interfaces/MenuBase;)V

    goto :goto_3

    .line 197
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v19    # "listener":Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_1
    new-instance v2, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f4

    .line 198
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/EasyBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 199
    check-cast v3, Lcom/sec/android/app/camera/menu/EasyBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 201
    .restart local v18    # "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$3;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v20

    .line 211
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 214
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_2
    new-instance v2, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f5

    .line 215
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 216
    check-cast v3, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 218
    .restart local v18    # "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$4;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v20

    .line 228
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 231
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 232
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/4 v10, 0x2

    .line 233
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 234
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 236
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 237
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x64

    .line 238
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 239
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 241
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 242
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x8

    .line 243
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 244
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 246
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 247
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x7f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x7f

    .line 248
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v20

    .line 249
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 251
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 252
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x77

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x77

    .line 253
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 254
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 256
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_8
    new-instance v2, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v20

    .line 257
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 259
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 260
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x80

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x80

    .line 261
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 262
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 264
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 265
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x75

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x75

    .line 266
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 267
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 269
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 270
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/DualEffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x5a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x5a

    .line 271
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 272
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 274
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_c
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_1

    .line 275
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x66

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x66

    .line 276
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v20

    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 278
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 279
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x66

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x66

    .line 280
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 282
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 284
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_d
    new-instance v2, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x3d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v20

    .line 285
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 287
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_e
    new-instance v2, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    const/16 v17, 0x0

    move-object v9, v2

    move-object/from16 v12, p0

    move/from16 v13, p1

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/app/camera/menu/VideoCollageTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 288
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    move-object/from16 v8, v20

    .line 289
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 291
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 292
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 294
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 297
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 298
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 300
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 303
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 304
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 305
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 307
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 308
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeInfoListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 309
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 311
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 312
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 314
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 316
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 317
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 319
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 321
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x71

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 322
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x71

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x71

    .line 323
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 324
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 326
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 327
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x3

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 329
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 331
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 332
    .end local v20    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ListTypeMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x96

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x96

    .line 333
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 334
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 344
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    goto/16 :goto_2

    .line 346
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 352
    :cond_3
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMenu end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0x8 -> :sswitch_5
        0x12 -> :sswitch_8
        0x3d -> :sswitch_d
        0x5a -> :sswitch_b
        0x64 -> :sswitch_4
        0x66 -> :sswitch_c
        0x71 -> :sswitch_15
        0x75 -> :sswitch_a
        0x77 -> :sswitch_7
        0x7f -> :sswitch_6
        0x80 -> :sswitch_9
        0x81 -> :sswitch_13
        0x82 -> :sswitch_14
        0x83 -> :sswitch_e
        0x84 -> :sswitch_f
        0x85 -> :sswitch_10
        0x96 -> :sswitch_17
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_2
        0xbe0 -> :sswitch_11
        0xbe1 -> :sswitch_12
        0x232f -> :sswitch_16
    .end sparse-switch
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 7

    .prologue
    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v1, "log":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 361
    .local v3, "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    sget-object v6, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 362
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 363
    .local v2, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    .line 366
    .local v4, "viewSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 367
    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 368
    .restart local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v5, " => "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v5, "(Z:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    const-string v5, ",P:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 376
    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    .end local v0    # "i":I
    .end local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v4    # "viewSize":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 378
    .restart local v0    # "i":I
    .restart local v2    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v4    # "viewSize":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public exists(I)Z
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 384
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 385
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 386
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 388
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 386
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 388
    .restart local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    return-object v0
.end method

.method public getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 6
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 399
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 400
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 401
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    if-nez v2, :cond_0

    .line 404
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->createMenu(I)V

    .line 405
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 407
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 408
    if-nez v2, :cond_0

    .line 409
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid menu ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 412
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 401
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 407
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 415
    :cond_0
    return-object v2
.end method

.method protected final getOverlayRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected final getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    return-object v0
.end method

.method protected final getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getZorderOnTop()I
    .locals 4

    .prologue
    .line 810
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    monitor-exit v2

    .line 816
    :goto_0
    return v1

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 813
    :catch_0
    move-exception v0

    .line 814
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZorderOnTop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 426
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 428
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 432
    :cond_0
    return-void

    .line 428
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isActive(I)Z
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 437
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 439
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 440
    if-nez v0, :cond_0

    .line 441
    const/4 v1, 0x0

    .line 443
    :goto_0
    return v1

    .line 439
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 443
    .restart local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    goto :goto_0
.end method

.method public isBaseMenuInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 449
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_0

    .line 450
    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - BaseMenu is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    .line 454
    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - Current shooting mode layout is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewTouchEnabled()Z
    .locals 4

    .prologue
    .line 463
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v1

    monitor-exit v2

    .line 469
    :goto_0
    return v1

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPreviewTouchEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 475
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const/4 v1, 0x1

    monitor-exit v2

    .line 483
    :goto_0
    return v1

    .line 479
    :cond_0
    monitor-exit v2

    .line 483
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityTouchEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearAllMenus()V

    .line 489
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearShootingModeViewGroup()V

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 495
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 497
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuCreateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->onDestroy()V

    .line 502
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onDestroy()V

    .line 507
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 509
    :cond_2
    return-void

    .line 497
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 6
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 826
    :try_start_0
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 828
    .local v2, "isBaseMenuTopView":Z
    :goto_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 829
    if-eqz v2, :cond_0

    .line 830
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 831
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x2c0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    .line 832
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_0

    .line 833
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 861
    .end local v2    # "isBaseMenuTopView":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    .line 827
    goto :goto_0

    .line 828
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 858
    :catch_0
    move-exception v1

    .line 859
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHideMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 836
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    .restart local v2    # "isBaseMenuTopView":Z
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V

    .line 838
    const v3, 0x7f0b0003

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 839
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 840
    new-instance v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 854
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 855
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 514
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    const/4 v1, 0x1

    monitor-exit v2

    .line 522
    :goto_0
    return v1

    .line 518
    :cond_0
    monitor-exit v2

    .line 522
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 528
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const/4 v1, 0x1

    monitor-exit v2

    .line 536
    :goto_0
    return v1

    .line 532
    :cond_0
    monitor-exit v2

    .line 536
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLayoutChanged(III)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 542
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChanged : orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 545
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 547
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 549
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 552
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    .line 553
    .local v1, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v1, :cond_0

    .line 554
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 551
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 557
    .end local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 558
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    .line 559
    .restart local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v1, :cond_2

    .line 560
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 557
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_3
    return-void
.end method

.method public onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 568
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 569
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 571
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 579
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 580
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 581
    .local v1, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    .line 584
    .local v3, "viewSize":I
    if-lez v3, :cond_1

    .line 585
    new-array v4, v3, [Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 586
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 589
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    if-eqz v2, :cond_0

    .line 590
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 591
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    goto :goto_0

    .line 581
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v1    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    .end local v3    # "viewSize":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 596
    .restart local v1    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "viewSize":I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onPause()V

    .line 597
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->closeVisibleViews()V

    .line 603
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 604
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onResume()V

    .line 609
    return-void
.end method

.method protected onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 6
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    const/4 v2, 0x1

    .line 870
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    const/4 v5, 0x3

    if-lt v3, v5, :cond_1

    .line 872
    .local v2, "isNeedHideViewLayout":Z
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    if-eqz v2, :cond_0

    .line 874
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 875
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x2c0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideView(I)V

    .line 876
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v3, :cond_0

    .line 877
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 905
    .end local v2    # "isNeedHideViewLayout":Z
    :cond_0
    :goto_1
    return-void

    .line 871
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 872
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 902
    :catch_0
    move-exception v1

    .line 903
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShowMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 880
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    .restart local v2    # "isNeedHideViewLayout":Z
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V

    .line 882
    const v3, 0x7f0b0002

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 883
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 884
    new-instance v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$6;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 898
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    .line 899
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 614
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onStop()V

    .line 616
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 620
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 621
    return-void

    .line 616
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected popMenu()V
    .locals 4

    .prologue
    .line 909
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 911
    monitor-exit v2

    .line 915
    :goto_0
    return-void

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/util/EmptyStackException;
    const-string v1, "MenuManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popMenu : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/EmptyStackException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processBack()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 627
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 629
    .local v1, "isNeedActivityFinish":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    if-eqz v1, :cond_1

    .line 632
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 650
    .end local v1    # "isNeedActivityFinish":Z
    :goto_1
    return-void

    .line 628
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processBack : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 636
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "isNeedActivityFinish":Z
    :cond_1
    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    .line 637
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 638
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 640
    :cond_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 642
    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    .line 643
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 644
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    .line 646
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_0

    .line 640
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_b .. :try_end_b} :catch_0
.end method

.method protected pushMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 6
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 920
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 922
    .local v2, "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 923
    :goto_0
    if-eqz v2, :cond_1

    .line 924
    :try_start_2
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 925
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 927
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 928
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 929
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 934
    .end local v2    # "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v1

    .line 935
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pushMenu : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 938
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 940
    return-void

    .line 922
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    .line 939
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method public registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuCreateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    return-void
.end method

.method public removeMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 660
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 662
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 666
    :cond_0
    return-void

    .line 662
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 670
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 679
    :cond_2
    return-void
.end method

.method public setHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 684
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 685
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnHideListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;

    .prologue
    .line 694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 695
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnHideListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnShowListener(ILcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;

    .prologue
    .line 704
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 705
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnShowListener failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 714
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 715
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeHideAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOneTimeShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 724
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 725
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOneTimeShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 10
    .param p1, "shootingModeId"    # I

    .prologue
    const/4 v2, 0x0

    .line 733
    const-string v1, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setShootingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_1

    .line 735
    const-string v1, "MenuManager"

    const-string v2, "Cannot set shooting mode. BaseMenu is not created. return."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 739
    .local v0, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 740
    .local v3, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    .line 741
    :cond_2
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    .end local v0    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 742
    .end local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v0    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    new-instance v3, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v1

    int-to-float v7, v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    int-to-float v8, v1

    move v5, v2

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 744
    .restart local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object v6, v0

    move-object v7, v3

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    .line 747
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 749
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public setShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 756
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 757
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShowAnimation failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .param p1, "menuId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 766
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 767
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 768
    return-object v1

    .line 769
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    throw v0
.end method

.method public showMenu(IZ)Lcom/sec/android/app/camera/interfaces/MenuBase;
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "hideShootingModeView"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 778
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 779
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    return-object v1

    .line 781
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMenu failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    throw v0
.end method

.method public unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuCreateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 790
    return-void
.end method

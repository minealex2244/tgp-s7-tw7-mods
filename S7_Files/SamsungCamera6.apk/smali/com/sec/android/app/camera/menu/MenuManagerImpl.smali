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
    .line 53
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

    .line 118
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
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 101
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 119
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

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

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

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p4, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 134
    new-instance v0, Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-direct {v0, p1, p2, p0}, Lcom/sec/android/app/camera/menu/VisualInteraction;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 136
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 137
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 138
    iput-object p3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 139
    iput-object p5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/MenuManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method private clearAllMenus()V
    .locals 6

    .prologue
    .line 915
    const-string v4, "MenuManager"

    const-string v5, "clearAllMenus"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 918
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 919
    monitor-exit v5

    .line 939
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 923
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 926
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 928
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 929
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 930
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 931
    if-eqz v1, :cond_1

    .line 932
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 934
    :cond_1
    const-string v4, "MenuManager"

    const-string v5, "clearing..."

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
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

    .line 930
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

    .line 936
    :cond_2
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 937
    :try_start_4
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 938
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
    .line 942
    const-string v5, "MenuManager"

    const-string v6, "clearInactiveShootingModeViews"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 944
    .local v3, "shootingModeViewGroupsClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/glview/GLViewGroup;>;"
    const/4 v2, 0x0

    .line 945
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 946
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 947
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/glview/GLViewGroup;

    .line 948
    .local v4, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 949
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

    .line 950
    invoke-virtual {v4}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 951
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 952
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_0

    .line 953
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 955
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 956
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 945
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 959
    .end local v4    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    return-void
.end method

.method private clearInvisibleViews()V
    .locals 7

    .prologue
    .line 962
    const-string v4, "MenuManager"

    const-string v5, "clearInvisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 965
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 966
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    const/4 v3, 0x0

    .line 968
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 969
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 971
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 972
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 973
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 974
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 975
    const-string v4, "MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearing : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 977
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 968
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 966
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

    .line 973
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

    .line 981
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 982
    return-void
.end method

.method private clearShootingModeViewGroup()V
    .locals 5

    .prologue
    .line 985
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    if-nez v4, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 989
    :cond_0
    const/4 v2, 0x0

    .line 990
    .local v2, "key":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 991
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 992
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 993
    .local v3, "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v3, :cond_1

    .line 994
    invoke-virtual {v3}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 995
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 996
    .local v0, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_1

    .line 997
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 990
    .end local v0    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1001
    .end local v3    # "viewLayout":Lcom/samsung/android/glview/GLViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1002
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method

.method private closeVisibleViews()V
    .locals 6

    .prologue
    .line 1006
    const-string v4, "MenuManager"

    const-string v5, "closeVisibleViews"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1009
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 1010
    .local v2, "menuClone":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const/4 v3, 0x0

    .line 1012
    .local v3, "menuId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1013
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1015
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1016
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 1017
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1018
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

    .line 1019
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 1012
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
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

    .line 1017
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

    .line 1022
    :cond_1
    return-void
.end method

.method private isClearable(Lcom/sec/android/app/camera/menu/AbstractMenu;)Z
    .locals 1
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 1026
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1045
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1043
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0x3d -> :sswitch_0
        0x5a -> :sswitch_0
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x7d -> :sswitch_0
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
    .line 1050
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 1052
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1053
    :try_start_2
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1054
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1055
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1056
    :try_start_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 1057
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1061
    :goto_0
    return-void

    .line 1052
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

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
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

    .line 1055
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
    .line 146
    const-string v3, "MenuManager"

    const-string v4, "collapseMenu"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

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
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getBaseViewId()I

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
    .locals 20
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
    const/16 v19, 0x0

    .line 170
    .local v19, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 172
    monitor-exit v4

    move-object/from16 v8, v19

    .line 370
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .local v8, "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_0
    :goto_0
    return-void

    .line 174
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    const-string v3, "MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createMenu: "

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

    .line 362
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

    move-object/from16 v8, v19

    .line 365
    .end local v18    # "initialShootingMode":I
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :goto_1
    if-eqz v2, :cond_0

    .line 366
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 367
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 197
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    move-object/from16 v8, v19

    .line 211
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto :goto_1

    .line 214
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_2
    new-instance v2, Lcom/sec/android/app/camera/menu/SimpleBaseMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x1f6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v9, 0x1f6

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

    move-object/from16 v8, v19

    .line 228
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 231
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_3
    new-instance v2, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

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

    .line 232
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/menu/SilverBaseMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object v3, v2

    .line 233
    check-cast v3, Lcom/sec/android/app/camera/menu/SilverBaseMenu;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v18

    .line 235
    .restart local v18    # "initialShootingMode":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl$5;-><init>(Lcom/sec/android/app/camera/menu/MenuManagerImpl;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v8, v19

    .line 245
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 248
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .end local v18    # "initialShootingMode":I
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 249
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 250
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 251
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 253
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 254
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 255
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ModeListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 256
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 258
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 259
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 260
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 261
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 263
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->delete(I)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 265
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x7f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x7f

    .line 266
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 267
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 269
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_8
    new-instance v2, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v13, 0x7d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v4, 0x7d

    .line 270
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    move-object v9, v2

    move-object/from16 v12, p0

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/camera/menu/WatermarkThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v8, v19

    .line 271
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 273
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x77

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 274
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 275
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/ProColorTuneSettingMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 276
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 278
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 279
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/16 v6, 0x12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuOrderMap:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    .line 280
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 281
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 283
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 284
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 285
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 286
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 288
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x75

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 289
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 290
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 291
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 293
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 294
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 295
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/DualEffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 296
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 298
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_e
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_2

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x7f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 300
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    new-instance v2, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;

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

    .line 301
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 303
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 304
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 305
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/menu/EffectListMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V

    .line 307
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 309
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_f
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
    move-object/from16 v8, v19

    .line 310
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 312
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_10
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

    .line 313
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    move-object/from16 v8, v19

    .line 314
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    goto/16 :goto_1

    .line 316
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 317
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 319
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 322
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 323
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 325
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 328
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 329
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 330
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 332
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 333
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 334
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 336
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 337
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 339
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 341
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 342
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 344
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 346
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x71

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 347
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 348
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 349
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 351
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 352
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 354
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    goto/16 :goto_1

    .line 356
    .end local v8    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .restart local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v8

    .line 357
    .end local v19    # "resourceData":Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
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

    .line 358
    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/camera/menu/ListTypeMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V

    .line 359
    .restart local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->getAnchor(I)Lcom/samsung/android/glview/GLImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->setAnchor(Lcom/samsung/android/glview/GLImage;)V

    goto/16 :goto_1

    .line 178
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_4
        0x8 -> :sswitch_6
        0x12 -> :sswitch_a
        0x3d -> :sswitch_f
        0x5a -> :sswitch_d
        0x64 -> :sswitch_5
        0x66 -> :sswitch_e
        0x71 -> :sswitch_17
        0x75 -> :sswitch_c
        0x77 -> :sswitch_9
        0x7d -> :sswitch_8
        0x7f -> :sswitch_7
        0x80 -> :sswitch_b
        0x81 -> :sswitch_15
        0x82 -> :sswitch_16
        0x83 -> :sswitch_10
        0x84 -> :sswitch_11
        0x85 -> :sswitch_12
        0x96 -> :sswitch_19
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_2
        0xbe0 -> :sswitch_13
        0xbe1 -> :sswitch_14
        0x232f -> :sswitch_18
    .end sparse-switch
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 7

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v1, "log":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 378
    .local v3, "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    sget-object v6, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v6

    .line 379
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 380
    .local v2, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v4

    .line 383
    .local v4, "viewSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 384
    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    check-cast v3, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 385
    .restart local v3    # "view":Lcom/sec/android/app/camera/menu/AbstractMenu;
    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    const-string v5, " => "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v5, "(Z:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    const-string v5, ",P:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v3}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 393
    const-string v5, ")\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
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

    .line 395
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
    .line 401
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 403
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 405
    if-nez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    .line 403
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 408
    .restart local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final getBackgroundRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    .prologue
    .line 414
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
    .line 420
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 422
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    if-nez v2, :cond_0

    .line 425
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->createMenu(I)V

    .line 426
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 428
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    if-nez v2, :cond_0

    .line 430
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

    .line 433
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    throw v1

    .line 422
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 428
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

    .line 436
    :cond_0
    return-object v2
.end method

.method protected final getOverlayRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected final getPopupMenuRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method public getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    return-object v0
.end method

.method protected final getVisualInteractionRoot()Lcom/samsung/android/glview/GLViewGroup;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    return-object v0
.end method

.method protected getZorderOnTop()I
    .locals 4

    .prologue
    .line 820
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v1

    monitor-exit v2

    .line 826
    :goto_0
    return v1

    .line 822
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
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

    .line 826
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 447
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 449
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 453
    :cond_0
    return-void

    .line 449
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
    .line 458
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 460
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2

    .line 461
    if-nez v0, :cond_0

    .line 462
    const/4 v1, 0x0

    .line 464
    :goto_0
    return v1

    .line 460
    .end local v0    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 464
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

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_0

    .line 471
    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - BaseMenu is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return v0

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    .line 475
    const-string v1, "MenuManager"

    const-string v2, "BaseMenu is not initialized - Current shooting mode layout is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewTouchEnabled()Z
    .locals 4

    .prologue
    .line 484
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isPreviewTouchEnabled()Z

    move-result v1

    monitor-exit v2

    .line 490
    :goto_0
    return v1

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
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

    .line 490
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v1, 0x1

    monitor-exit v2

    .line 504
    :goto_0
    return v1

    .line 500
    :cond_0
    monitor-exit v2

    .line 504
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
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

    .line 509
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearAllMenus()V

    .line 510
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearShootingModeViewGroup()V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    .line 516
    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/MenuResourceDepot;->onDestroy()V

    .line 522
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuResourceDepot:Lcom/sec/android/app/camera/menu/MenuResourceDepot;

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onDestroy()V

    .line 527
    iput-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    .line 529
    :cond_2
    return-void

    .line 518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHideMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 5
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 836
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 838
    .local v1, "isBaseMenuTopView":Z
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    if-eqz v1, :cond_0

    .line 840
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 841
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0x2c0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    .line 842
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 852
    .end local v1    # "isBaseMenuTopView":Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 837
    goto :goto_0

    .line 838
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideMenu : "

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

    .line 846
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "isBaseMenuTopView":Z
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 534
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const/4 v1, 0x1

    monitor-exit v2

    .line 542
    :goto_0
    return v1

    .line 538
    :cond_0
    monitor-exit v2

    .line 542
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
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
    .line 548
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    const/4 v1, 0x1

    monitor-exit v2

    .line 556
    :goto_0
    return v1

    .line 552
    :cond_0
    monitor-exit v2

    .line 556
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
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
    .line 562
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

    .line 563
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

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBackgroundRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 565
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteractionRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 566
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 567
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 568
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 569
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mPopupMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 571
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 572
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    .line 573
    .local v1, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v1, :cond_0

    .line 574
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 571
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLViewGroup;

    .line 579
    .restart local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v1, :cond_2

    .line 580
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    .line 577
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    .end local v0    # "i":I
    .end local v1    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    :cond_3
    return-void
.end method

.method public onLowMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 588
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInactiveShootingModeViews()V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 599
    sget-object v5, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v5

    .line 600
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 601
    .local v1, "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v3

    .line 604
    .local v3, "viewSize":I
    if-lez v3, :cond_1

    .line 605
    new-array v4, v3, [Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 606
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 608
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

    .line 609
    .local v2, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    if-eqz v2, :cond_0

    .line 610
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    goto :goto_0

    .line 601
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

    .line 616
    .restart local v1    # "mViewStackClone":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/sec/android/app/camera/menu/AbstractMenu;>;"
    .restart local v3    # "viewSize":I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mVisualInteraction:Lcom/sec/android/app/camera/menu/VisualInteraction;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/menu/VisualInteraction;->onPause()V

    .line 617
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 621
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->closeVisibleViews()V

    .line 623
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 624
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method protected onShowMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V
    .locals 5
    .param p1, "menu"    # Lcom/sec/android/app/camera/menu/AbstractMenu;

    .prologue
    .line 861
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->getZorder()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_1

    const/4 v1, 0x1

    .line 863
    .local v1, "isNeedHideViewLayout":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 864
    if-eqz v1, :cond_0

    .line 865
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->isFullScreen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 866
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0x2c0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->hideView(I)V

    .line 867
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v2, :cond_0

    .line 868
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 877
    .end local v1    # "isNeedHideViewLayout":Z
    :cond_0
    :goto_1
    return-void

    .line 862
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 863
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

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v2, "MenuManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowMenu : "

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

    .line 871
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "isNeedHideViewLayout":Z
    :cond_2
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 633
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onStop()V

    .line 635
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->clearInvisibleViews()V

    .line 640
    return-void

    .line 635
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

    .line 636
    :catch_0
    move-exception v0

    .line 637
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
    .line 881
    :try_start_0
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 883
    monitor-exit v2

    .line 887
    :goto_0
    return-void

    .line 883
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/EmptyStackException; {:try_start_2 .. :try_end_2} :catch_0

    .line 884
    :catch_0
    move-exception v0

    .line 885
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

    .line 646
    :try_start_0
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
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

    .line 648
    .local v1, "isNeedActivityFinish":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    if-eqz v1, :cond_1

    .line 651
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 669
    .end local v1    # "isNeedActivityFinish":Z
    :goto_1
    return-void

    .line 647
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 648
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

    .line 666
    :catch_0
    move-exception v0

    .line 667
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

    .line 655
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "isNeedActivityFinish":Z
    :cond_1
    :try_start_5
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_0

    .line 656
    :try_start_6
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 659
    :cond_2
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 661
    :try_start_7
    sget-object v3, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_0

    .line 662
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->restoreMenu()V

    .line 665
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

    .line 659
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
    .line 892
    :try_start_0
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 894
    .local v2, "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 895
    :goto_0
    if-eqz v2, :cond_1

    .line 896
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

    .line 897
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->hideMenu()V

    .line 899
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 900
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    move-object v2, v0

    .line 901
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

    .line 906
    .end local v2    # "lastMenu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v1

    .line 907
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

    .line 909
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1
    sget-object v4, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStackLock:Ljava/lang/Object;

    monitor-enter v4

    .line 910
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 912
    return-void

    .line 894
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

    .line 911
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3
.end method

.method public removeMenu(I)V
    .locals 3
    .param p1, "menuId"    # I

    .prologue
    .line 674
    sget-object v2, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 675
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 676
    .local v0, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->removeMenu(Lcom/sec/android/app/camera/menu/AbstractMenu;)V

    .line 680
    :cond_0
    return-void

    .line 676
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
    .line 684
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mMenuRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mOverlayRoot:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->setAlpha(F)V

    .line 693
    :cond_2
    return-void
.end method

.method public setHideAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 698
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 699
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
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
    .line 708
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 709
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    .line 711
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
    .line 718
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 719
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
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
    .line 728
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 729
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeHideAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
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
    .line 738
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 739
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOneTimeShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
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

    .line 747
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

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    if-nez v1, :cond_1

    .line 749
    const-string v1, "MenuManager"

    const-string v2, "Cannot set shooting mode. BaseMenu is not created. return."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLViewGroup;

    .line 754
    .local v0, "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/glview/GLViewGroup;

    .line 755
    .local v3, "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    if-eqz v0, :cond_2

    if-nez v3, :cond_3

    .line 756
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

    .line 757
    .end local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    .restart local v0    # "viewGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeViewGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 758
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

    .line 759
    .restart local v3    # "controllerGroup":Lcom/samsung/android/glview/GLViewGroup;
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingModeControllerGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mShootingMode:Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    move-object v6, v0

    move-object v7, v3

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 763
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mBaseMenu:Lcom/sec/android/app/camera/menu/AbstractBaseMenu;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V

    .line 764
    iput-object v0, p0, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->mCurrentShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    goto :goto_0
.end method

.method public setShowAnimation(ILandroid/view/animation/Animation;)V
    .locals 5
    .param p1, "menuId"    # I
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 771
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    .line 772
    .local v1, "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v1    # "menu":Lcom/sec/android/app/camera/interfaces/MenuBase;
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
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
    .line 781
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 782
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    return-object v1

    .line 784
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 785
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

    .line 786
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
    .line 793
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/AbstractMenu;

    .line 794
    .local v1, "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->showMenu(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    return-object v1

    .line 796
    .end local v1    # "menu":Lcom/sec/android/app/camera/menu/AbstractMenu;
    :catch_0
    move-exception v0

    .line 797
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

    .line 798
    throw v0
.end method

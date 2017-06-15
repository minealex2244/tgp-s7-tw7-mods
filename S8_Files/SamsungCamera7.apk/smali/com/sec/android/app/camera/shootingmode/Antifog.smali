.class public Lcom/sec/android/app/camera/shootingmode/Antifog;
.super Ljava/lang/Object;
.source "Antifog.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Anti-Fog"


# instance fields
.field private final BEAUTY_MENU_BUTTON_POS_X:I

.field private final BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private final BEAUTY_MENU_BUTTON_POS_Y:I

.field private final BEAUTY_MENU_BUTTON_WIDTH:I

.field private mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

.field private mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsIndoor:Z

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 3
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    .line 51
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_X:I

    .line 52
    const v0, 0x7f0a0261

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_Y:I

    .line 53
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0016

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    .line 57
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 58
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 60
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 61
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 62
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 63
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    .line 74
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 75
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Antifog;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Antifog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Antifog;)Lcom/samsung/android/glview/GLButton;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Antifog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Antifog;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Antifog;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method private isIndoor()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    return v0
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 3
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/4 v2, 0x0

    .line 95
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v1, v2, [I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogListener(Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogLevelSync(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x75

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    .line 118
    return-void
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "viewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p3, "controllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p4, "baseMenuController"    # Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .param p5, "menuManager"    # Lcom/sec/android/app/camera/interfaces/MenuManager;

    .prologue
    .line 122
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 123
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020002

    const v7, 0x7f020003

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090085

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Antifog$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Antifog$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Antifog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 151
    return-void

    .line 129
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020002

    const v7, 0x7f020003

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    goto :goto_0
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .prologue
    .line 155
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogLevelSync(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public onHazeRemovalCapturingProgressed(II)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "maxImageNum"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x1a

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 162
    const-string v1, "Anti-Fog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHazeRemovalCapturingProgressed, progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 164
    if-nez p1, :cond_0

    .line 165
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090086

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 167
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 200
    .end local v0    # "toast":Landroid/widget/Toast;
    :goto_0
    return-void

    .line 169
    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mIsIndoor:Z

    goto :goto_0

    .line 174
    :cond_1
    if-le p1, p2, :cond_2

    .line 175
    const-string v1, "Anti-Fog"

    const-string v2, "exceed max image number."

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_2
    const/16 v1, 0x64

    if-ge p1, v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 191
    :cond_4
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0

    .line 185
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, v5, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    goto :goto_1

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    .line 195
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb8

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->acquireDVFS(I)V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogLevelSync(I)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntifogSliderMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setAntiFogListener(Lcom/samsung/android/camera/core/SemCamera$HazeRemovalEventListener;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mAntiFogSliderMenu:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 1
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Antifog;->isIndoor()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/16 v3, 0x3d

    .line 283
    const-string v0, "Anti-Fog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    .line 290
    :cond_1
    if-nez p1, :cond_2

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    .line 299
    :cond_2
    :goto_0
    return-void

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Antifog;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    goto :goto_0
.end method

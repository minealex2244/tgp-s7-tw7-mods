.class public Lcom/sec/android/app/camera/shootingmode/Food;
.super Ljava/lang/Object;
.source "Food.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_EFFECT_MOVING_THRESHOLD:F = 5.0f

.field private static final DELAY_TIME_TO_HIDE_GUIDE_UI:I = 0xbb8

.field private static final DELAY_TIME_TO_HIDE_OPENING_ANIMATION:I = 0x320

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS:I = 0x2328

.field private static final DELAY_TIME_TO_RESET_TOUCH_FOCUS_FROM_SHUTTER:I = 0xbb8

.field private static final DELAY_TIME_TO_TURNOFF_MASKING_EFFECT:I = 0x3e8

.field private static final EFFECT_GUIDE_HEIGHT_MAX:I = 0x3

.field private static final EFFECT_GUIDE_HEIGHT_MIN:I = 0x1

.field private static final EFFECT_GUIDE_WIDTH_MAX:I = 0x2

.field private static final EFFECT_GUIDE_WIDTH_MIN:I = 0x0

.field private static final GUIDE_STATE_MOVING:I = 0x2

.field private static final GUIDE_STATE_NONE:I = 0x0

.field private static final GUIDE_STATE_RESIZING:I = 0x1

.field private static final MESSAGE_FOOD_CHANGE_TO_CAF:I = 0x5

.field private static final MESSAGE_FOOD_HIDE_GUIDE_UI:I = 0x1

.field private static final MESSAGE_FOOD_HIDE_MASKING_EFFECT:I = 0x3

.field private static final MESSAGE_FOOD_RESET_CAF_TIMER_FROM_SHUTTER:I = 0x7

.field private static final MESSAGE_FOOD_RESET_CHANGE_TO_CAF_TIMER:I = 0x6

.field private static final MESSAGE_FOOD_RESET_HIDE_GUIDE_UI_TIMER:I = 0x2

.field private static final MESSAGE_FOOD_RESET_HIDE_MASKING_TIMER:I = 0x4

.field private static final SECIMAGE_COORDINATE_MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "Food"

.field private static final TOUCH_INSIDE_AREA:I = 0x7

.field private static final TOUCH_OUTSIDE_AREA:I = 0x0

.field private static final TOUCH_VERTEX_LB:I = 0x2

.field private static final TOUCH_VERTEX_LT:I = 0x1

.field private static final TOUCH_VERTEX_RB:I = 0x4

.field private static final TOUCH_VERTEX_RT:I = 0x3


# instance fields
.field private final CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

.field private final CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

.field private final CIRCLE_EFFECT_GUIDE_POS_X:F

.field private final CIRCLE_EFFECT_GUIDE_POS_Y:F

.field private final EFFECT_GUIDE_DEFAULT_HEIGHT:F

.field private final EFFECT_GUIDE_DEFAULT_WIDTH:F

.field private final FOOD_COLOR_TUNE_BUTTON_POS_X:I

.field private final FOOD_COLOR_TUNE_BUTTON_POS_Y:I

.field private final FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

.field private final FOOD_COLOR_TUNE_BUTTON_WIDTH:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final TOUCH_VERTEX_AREA_WIDTH:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mAmountDeltaX:F

.field private mAmountDeltaY:F

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

.field private mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

.field private mEffectGuideCenter:Landroid/graphics/PointF;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

.field private mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

.field private mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

.field private mGuideState:I

.field private mIsZoom:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mMovePoint:Landroid/graphics/PointF;

.field private mPreviewLeft:F

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewRight:F

.field private mPreviewTop:F

.field private mRealPreviewHeight:F

.field private mRealPreviewWidth:F

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSelectedVertex:I

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "cameraSettings"    # Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    .line 110
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    .line 112
    const v0, 0x7f0a0140

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

    .line 113
    const v0, 0x7f0a032f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    .line 114
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    const v1, 0x7f0a0012

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_X:I

    .line 115
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_TOP_MARGIN:I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_Y:I

    .line 117
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    .line 118
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    .line 119
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    .line 120
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    .line 122
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    .line 123
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->EFFECT_GUIDE_DEFAULT_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    .line 124
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_X:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    .line 125
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_POS_Y:F

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    .line 127
    const v0, 0x7f0a0331

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    .line 128
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    .line 129
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    .line 135
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    .line 136
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    .line 138
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 139
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 140
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    .line 141
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    .line 142
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    .line 143
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 144
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 145
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    .line 146
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 147
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 148
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    .line 149
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    .line 150
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 151
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 152
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    .line 153
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    .line 154
    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Food$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Food$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 176
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Food;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->clearMessageHandler()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/Food;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Food;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Food;)Lcom/sec/android/app/camera/interfaces/AeAfManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/Food;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    return-object v0
.end method

.method private clearMessageHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    # invokes: Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->clear()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->access$500(Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;)V

    .line 627
    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    .line 628
    return-void
.end method

.method private convertHeight(F)F
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 631
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3
    .param p1, "input"    # Landroid/graphics/PointF;

    .prologue
    .line 635
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 636
    .local v0, "result":Landroid/graphics/PointF;
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 637
    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 639
    return-object v0
.end method

.method private convertReceivedX(F)F
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 643
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    add-float/2addr v0, v1

    return v0
.end method

.method private convertReceivedY(F)F
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 647
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    div-float v0, p1, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private convertWidth(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 651
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    sub-float v0, p1, v1

    .line 652
    .local v0, "positionX":F
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    return v1
.end method

.method private decideSelectedVertex(FF)V
    .locals 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 656
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v1

    .line 657
    .local v1, "curGuideLeft":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v2

    .line 658
    .local v2, "curGuideRight":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v3

    .line 659
    .local v3, "curGuideTop":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v0

    .line 661
    .local v0, "curGuideBottom":F
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_0

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_0

    .line 665
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200b7

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 666
    const/4 v4, 0x1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    .line 693
    :goto_0
    return-void

    .line 667
    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_1

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, p2

    if-lez v4, :cond_1

    .line 671
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200b9

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 672
    const/4 v4, 0x3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    .line 673
    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_2

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_2

    .line 677
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 678
    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto :goto_0

    .line 679
    :cond_2
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, v4, p1

    if-lez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpg-float v4, v4, p2

    if-gez v4, :cond_3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->TOUCH_VERTEX_AREA_WIDTH:I

    int-to-float v4, v4

    add-float/2addr v4, v0

    cmpl-float v4, v4, p2

    if-lez v4, :cond_3

    .line 683
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v5, 0x7f0200b8

    invoke-virtual {v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 684
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    .line 685
    :cond_3
    cmpl-float v4, p1, v1

    if-lez v4, :cond_4

    cmpg-float v4, p1, v2

    if-gez v4, :cond_4

    cmpl-float v4, p2, v3

    if-lez v4, :cond_4

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    .line 689
    const/4 v4, 0x7

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0

    .line 691
    :cond_4
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    goto/16 :goto_0
.end method

.method private getEffectGuideMaxSize(I)F
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 696
    packed-switch p1, :pswitch_data_0

    .line 704
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 699
    :pswitch_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 702
    :pswitch_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hideEffectGuide()V
    .locals 2

    .prologue
    .line 708
    const-string v0, "Food"

    const-string v1, "hideEffectGuide"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 714
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 715
    return-void
.end method

.method private isFrameShowing()Z
    .locals 2

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidTouchArea(FF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 722
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewAspectRatio()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v5

    if-nez v5, :cond_1

    .line 723
    const v5, 0x7f0a000c

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    .line 724
    .local v3, "upperLimit":I
    const v5, 0x7f0a02a4

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    .line 725
    .local v2, "shutterButtonWidth":F
    const v5, 0x7f0a0393

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    .line 726
    .local v1, "shutterButtonPortraitBottomPadding":F
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float/2addr v5, v2

    float-to-int v0, v5

    .line 728
    .local v0, "lowerLimit":I
    int-to-float v5, v0

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 736
    .end local v0    # "lowerLimit":I
    .end local v1    # "shutterButtonPortraitBottomPadding":F
    .end local v2    # "shutterButtonWidth":F
    .end local v3    # "upperLimit":I
    :cond_0
    :goto_0
    return v4

    .line 732
    :cond_1
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    cmpl-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 736
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private moveEffectGuide(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "newCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 740
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v3

    .line 741
    .local v0, "deltaX":F
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v3

    .line 743
    .local v1, "deltaY":F
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 744
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 746
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 748
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    .line 749
    return-void
.end method

.method private moveEffectGuideToCenter()V
    .locals 5

    .prologue
    .line 752
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v4, Landroid/graphics/PointF;->x:F

    .line 753
    .local v2, "x":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v4, Landroid/graphics/PointF;->y:F

    .line 755
    .local v3, "y":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v2, v4

    .line 756
    .local v0, "deltaX":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 758
    .local v1, "deltaY":F
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->x:F

    .line 759
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iput v3, v4, Landroid/graphics/PointF;->y:F

    .line 761
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->translate(FF)V

    .line 762
    return-void
.end method

.method private resetEffectGuide()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 767
    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideWithDrag(IFF)V

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->resetTranslate()V

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getLeft()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getRight()F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 774
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->getTop()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getBottom()F

    move-result v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 776
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    .line 777
    return-void
.end method

.method private resizeEffectGuideByDelta(F)V
    .locals 7
    .param p1, "deltaR"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 780
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v1

    .line 781
    .local v1, "MIN_WIDTH":F
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v0

    .line 783
    .local v0, "MAX_WIDTH":F
    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    .line 785
    cmpg-float v2, p1, v4

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 786
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float v2, v1, v2

    div-float p1, v2, v6

    .line 791
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 792
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 793
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    neg-float v3, p1

    neg-float v4, p1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 794
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 795
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    .line 796
    return-void

    .line 787
    :cond_1
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    mul-float v3, v6, p1

    add-float/2addr v2, v3

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 788
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v2

    sub-float v2, v0, v2

    div-float p1, v2, v6

    goto :goto_0
.end method

.method private resizeEffectGuideWithDrag(IFF)V
    .locals 10
    .param p1, "vertexTouchMode"    # I
    .param p2, "deltaX"    # F
    .param p3, "deltaY"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 799
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v3

    .line 800
    .local v3, "MIN_WIDTH":F
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v2

    .line 801
    .local v2, "MIN_HEIGHT":F
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v1

    .line 802
    .local v1, "MAX_WIDTH":F
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->getEffectGuideMaxSize(I)F

    move-result v0

    .line 804
    .local v0, "MAX_HEIGHT":F
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 805
    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 806
    mul-float p3, p2, v7

    .line 819
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 837
    :goto_1
    :pswitch_0
    cmpl-float v4, p2, v6

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_5

    .line 838
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v3

    div-float p2, v4, v8

    .line 842
    :cond_0
    :goto_2
    cmpl-float v4, p3, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_6

    .line 843
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, v2

    div-float p3, v4, v8

    .line 848
    :cond_1
    :goto_3
    mul-float v4, p2, p3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7

    .line 858
    :goto_4
    return-void

    .line 808
    :cond_2
    move p3, p2

    goto :goto_0

    .line 811
    :cond_3
    mul-float v4, p3, p2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 812
    mul-float p2, p3, v7

    goto :goto_0

    .line 814
    :cond_4
    move p2, p3

    goto :goto_0

    .line 823
    :pswitch_1
    mul-float/2addr p3, v7

    .line 824
    goto :goto_1

    .line 826
    :pswitch_2
    mul-float/2addr p2, v7

    .line 827
    goto :goto_1

    .line 829
    :pswitch_3
    mul-float/2addr p2, v7

    .line 830
    mul-float/2addr p3, v7

    .line 831
    goto :goto_1

    .line 839
    :cond_5
    cmpg-float v4, p2, v6

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    mul-float v5, v8, p2

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-ltz v4, :cond_0

    .line 840
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getWidth()F

    move-result v4

    sub-float/2addr v4, v1

    div-float p2, v4, v8

    goto :goto_2

    .line 844
    :cond_6
    cmpg-float v4, p3, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    mul-float v5, v8, p3

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    .line 845
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getHeight()F

    move-result v4

    sub-float/2addr v4, v0

    div-float p3, v4, v8

    goto :goto_3

    .line 852
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    sub-float/2addr v4, p2

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    .line 853
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    sub-float/2addr v4, p3

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaY:F

    .line 854
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, p2, p3, v9}, Lcom/samsung/android/glview/GLNinePatch;->translate(FFZ)V

    .line 855
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAmountDeltaX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 857
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    goto :goto_4

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setAnimationEffect()V
    .locals 2

    .prologue
    .line 861
    const-string v0, "FOCUS=1"

    .line 863
    .local v0, "param":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method private setMaskingEffect(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 868
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const-string v0, "ENHANCED=1"

    .line 873
    .local v0, "param":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 874
    return-void

    .line 871
    .end local v0    # "param":Ljava/lang/String;
    :cond_0
    const-string v0, "ENHANCED=0"

    .restart local v0    # "param":Ljava/lang/String;
    goto :goto_0
.end method

.method private showEffectGuide()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 878
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    .line 879
    return-void
.end method

.method private showSwitchingAnimation()V
    .locals 4

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->setAnimationEffect()V

    .line 883
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateBlurEffect()V

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 885
    return-void
.end method

.method private turnOffBlurEffect()V
    .locals 4

    .prologue
    .line 890
    const-string v0, "FOOD=0"

    .line 891
    .local v0, "param":Ljava/lang/String;
    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlurEffect String : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method private updateBlurEffect()V
    .locals 9

    .prologue
    .line 898
    const v6, 0x7f0a0330

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 900
    .local v1, "frameMargin":I
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v2

    .line 901
    .local v2, "left":F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentRight()F

    move-result v6

    int-to-float v7, v1

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertWidth(F)F

    move-result v4

    .line 902
    .local v4, "right":F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentBottom()F

    move-result v6

    int-to-float v7, v1

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v0

    .line 903
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentTop()F

    move-result v6

    int-to-float v7, v1

    add-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Food;->convertHeight(F)F

    move-result v5

    .line 905
    .local v5, "top":F
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 906
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FOOD=1,LE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",TO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",RI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",BO="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    float-to-int v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 907
    .local v3, "param":Ljava/lang/String;
    const-string v6, "Food"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEffect String : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetEffectParameter(Ljava/lang/String;)V

    .line 910
    .end local v3    # "param":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateDrawingArea()V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 914
    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview Resolution changed ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewTop:F

    .line 920
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewLeft:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRight:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewWidth:F

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mRealPreviewHeight:F

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipRect(Landroid/graphics/Rect;)V

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    .line 927
    return-void
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 7
    .param p1, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;

    .prologue
    const/16 v6, 0x8d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    const-string v1, "Food"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 199
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 208
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 209
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    .line 211
    const-string v1, "Food"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFoodColorTuneValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFoodColorTuneValue(I)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x80

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 223
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    .line 228
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 229
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwitchingAnimation()V

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 241
    :cond_1
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 287
    :goto_0
    return v1

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 285
    goto :goto_0

    .line 254
    :pswitch_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    .line 255
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    move v1, v2

    .line 256
    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const v4, 0x7f0200b5

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLNinePatch;->setNinePatch(I)V

    .line 259
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v3, :cond_2

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Food;->convertPositionForSending(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 264
    .local v0, "focusPoint":Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodBlurPosition(II)V

    .line 265
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    move v1, v2

    .line 266
    goto :goto_0

    .line 267
    .end local v0    # "focusPoint":Landroid/graphics/PointF;
    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-eqz v3, :cond_3

    .line 268
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTouchAfPosition(II)V

    .line 269
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleAutoFocus()V

    .line 271
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 275
    :cond_3
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    .line 276
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    :pswitch_3
    move v1, v2

    .line 279
    goto/16 :goto_0

    .line 281
    :pswitch_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 282
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    goto/16 :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onAutoFocus()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mScreenCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v0, "Food"

    const-string v1, "onAutoFocus : Focus mode is changed as Continuous Auto Focus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    .line 298
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    .line 299
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showSwitchingAnimation()V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 4
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v3, 0x1

    .line 309
    const-string v0, "Food"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraSettingsChanged: menuId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", modeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 329
    :goto_0
    return-void

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    .line 313
    if-ne p2, v3, :cond_0

    .line 314
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 315
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 320
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    .line 323
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->turnOffBlurEffect()V

    goto :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x8d
        :pswitch_0
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 5
    .param p1, "parameters"    # Lcom/samsung/android/camera/core/SemCamera$Parameters;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 333
    const-string v1, "cam_mode"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 334
    const-string v1, "focus-mode"

    const-string v2, "continuous-picture"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "scene-mode"

    const-string v2, "food"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v1, "wb-level"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 337
    const-string v1, "phase-af"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    .line 339
    .local v0, "effectPreviewFPSRange":[I
    aget v1, v0, v3

    aget v2, v0, v4

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    .line 340
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    .line 341
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
    .line 345
    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    .line 346
    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    .line 347
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    .line 348
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->FOOD_COLOR_TUNE_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0200ba

    const v7, 0x7f0200bc

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900c8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Food$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Food$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Food;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 364
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mPreviewRect:Landroid/graphics/Rect;

    .line 368
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_X:F

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_POS_Y:F

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_WIDTH:F

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->CIRCLE_EFFECT_GUIDE_FRAME_HEIGHT:F

    const v6, 0x7f0200b5

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_WIDTH:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLNinePatch;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setClickable(Z)V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setTitle(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mDrawingArea:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 385
    return-void
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2
    .param p1, "state"    # Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .prologue
    const/4 v1, 0x1

    .line 389
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    .line 392
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->updateDrawingArea()V

    .line 393
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuideToCenter()V

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    .line 396
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 397
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 401
    :cond_0
    return-void
.end method

.method public onFoodShotComplete([B)V
    .locals 14
    .param p1, "bytes"    # [B

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 405
    const-string v9, "Food"

    const-string v10, "onFoodShotComplete"

    invoke-static {v9, v10}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {p1, v13}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v4, v9

    .line 408
    .local v4, "left":F
    const/16 v9, 0x8

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v8, v9

    .line 409
    .local v8, "top":F
    const/16 v9, 0xc

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v7, v9

    .line 410
    .local v7, "right":F
    const/16 v9, 0x10

    invoke-static {p1, v9}, Lcom/sec/android/app/camera/util/Util;->byteArrayToInt([BI)I

    move-result v9

    int-to-float v0, v9

    .line 414
    .local v0, "bottom":F
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v9

    if-ne v9, v12, :cond_0

    .line 415
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->showEffectGuide()V

    .line 417
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v4

    .line 418
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedX(F)F

    move-result v7

    .line 419
    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v8

    .line 420
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Food;->convertReceivedY(F)F

    move-result v0

    .line 422
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuide:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v10}, Lcom/samsung/android/glview/GLNinePatch;->getCurrentLeft()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 424
    .local v6, "oldR":F
    add-float v9, v4, v7

    div-float v1, v9, v11

    .line 425
    .local v1, "centerX":F
    add-float v9, v8, v0

    div-float v2, v9, v11

    .line 427
    .local v2, "centerY":F
    sub-float v9, v7, v1

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 429
    .local v5, "newR":F
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    .line 430
    sub-float v3, v5, v6

    .line 431
    .local v3, "deltaR":F
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideByDelta(F)V

    .line 432
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 433
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 434
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v9, v13}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 436
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v3    # "deltaR":F
    .end local v5    # "newR":F
    .end local v6    # "oldR":F
    :cond_0
    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 443
    :cond_1
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 452
    const-string v0, "Food"

    const-string v1, "onInactivate()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFoodShotEventListener(Lcom/samsung/android/camera/core/SemCamera$FoodShotEventListener;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 467
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->removeMenu(I)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    .line 472
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    .line 474
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_FOOD_ADDED_LENS:Z

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v1, 0x8d

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    .line 477
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->resetEffectGuide()V

    .line 478
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->hideEffectGuide()V

    .line 479
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->clearMessageHandler()V

    .line 481
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuSelected(II)Z
    .locals 1
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v0, "Z103"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodColorTuneValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    const-string v0, "Z102"

    const/16 v1, 0x8d

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 502
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    return v0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2
    .param p1, "menu"    # Lcom/sec/android/app/camera/interfaces/MenuBase;

    .prologue
    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneSliderMenu:Lcom/sec/android/app/camera/menu/FoodColorTuneSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodColorTuneButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 526
    :cond_1
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 531
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 537
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 2
    .param p1, "captureMethod"    # Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    .prologue
    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 543
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0
    .param p1, "event"    # I

    .prologue
    .line 549
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 554
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40a00000    # 5.0f

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 558
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFoodBlurType()I

    move-result v0

    .line 559
    .local v0, "blurType":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    :pswitch_0
    return v5

    .line 561
    :pswitch_1
    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/PointF;->set(FF)V

    .line 562
    iput v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    .line 563
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Food;->isFrameShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 564
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/shootingmode/Food;->isValidTouchArea(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 568
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 569
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelAutoFocus()V

    .line 572
    :cond_1
    if-ne v0, v6, :cond_2

    .line 573
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/sec/android/app/camera/shootingmode/Food;->decideSelectedVertex(FF)V

    .line 575
    :cond_2
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    const/4 v7, 0x7

    if-ne v5, v7, :cond_4

    .line 576
    iput v10, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    .line 577
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    move v5, v6

    .line 621
    goto :goto_0

    .line 578
    :cond_4
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    if-eqz v5, :cond_5

    .line 579
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    .line 580
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_5
    move v5, v6

    .line 582
    goto :goto_0

    .line 589
    :pswitch_2
    iget-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mIsZoom:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-eqz v7, :cond_0

    .line 593
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->setMaskingEffect(Ljava/lang/Boolean;)V

    .line 594
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    sub-float v1, v5, v7

    .line 595
    .local v1, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float v2, v5, v7

    .line 597
    .local v2, "deltaY":F
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-ne v5, v10, :cond_7

    .line 598
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    add-float v3, v5, v1

    .line 599
    .local v3, "newCenterX":F
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mEffectGuideCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float v4, v5, v2

    .line 601
    .local v4, "newCenterY":F
    if-ne v0, v6, :cond_6

    .line 602
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/shootingmode/Food;->moveEffectGuide(Landroid/graphics/PointF;)V

    .line 604
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 605
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    .line 606
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 608
    .end local v3    # "newCenterX":F
    .end local v4    # "newCenterY":F
    :cond_7
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mGuideState:I

    if-ne v5, v6, :cond_9

    .line 609
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-gez v5, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_3

    .line 612
    :cond_8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mSelectedVertex:I

    invoke-direct {p0, v5, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Food;->resizeEffectGuideWithDrag(IFF)V

    .line 615
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mMovePoint:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 616
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/Food;->mFoodMsgHandler:Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;

    invoke-virtual {v5, v10}, Lcom/sec/android/app/camera/shootingmode/Food$FoodHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

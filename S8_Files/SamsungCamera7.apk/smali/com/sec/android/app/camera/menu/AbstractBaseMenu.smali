.class public abstract Lcom/sec/android/app/camera/menu/AbstractBaseMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "AbstractBaseMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseMenuController;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;


# static fields
.field protected static final ANIMATION_DURATION_500:I = 0x1f4

.field protected static final NUM_OF_RECORDING_MORPHING_ANIMATION_FRAME:I = 0x10


# instance fields
.field protected mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

.field protected mAttachMode:Z

.field protected mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

.field protected mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

.field protected mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

.field protected mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mDimState:Z

.field protected mDisableIndicators:Z

.field protected mDisableOverlayLayout:Z

.field protected mDisablePageNavigatorsGroup:Z

.field protected mDisableRecordingButton:Z

.field protected mDisableShootingModeView:Z

.field protected mDisableShutterButton:Z

.field protected mDisableSideQuickSetting:Z

.field protected mDisableThumbnailButton:Z

.field protected final mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

.field protected final mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

.field protected mFakeSnapImage:Lcom/samsung/android/glview/GLImage;

.field protected mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

.field protected mIndicators:Lcom/sec/android/app/camera/menu/Indicators;

.field protected mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

.field protected mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

.field protected mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

.field protected mPopupLayout:Lcom/sec/android/app/camera/menu/PopupLayout;

.field protected mRecordingAnimation:Z

.field protected mRecordingButton:Lcom/samsung/android/glview/GLButton;

.field protected mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

.field protected mShutterButton:Lcom/samsung/android/glview/GLButton;

.field protected mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

.field protected mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

.field protected mThumbnailButtonHideAnimationSet:Landroid/view/animation/AnimationSet;

.field protected mThumbnailButtonShowAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 9
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "engine"    # Lcom/sec/android/app/camera/interfaces/Engine;
    .param p3, "menuManager"    # Lcom/sec/android/app/camera/menu/MenuManagerImpl;
    .param p4, "viewId"    # I
    .param p5, "glParentView"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p6, "menuResourceDepot"    # Lcom/sec/android/app/camera/menu/MenuResourceDepot;
    .param p7, "zOrder"    # I

    .prologue
    .line 113
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    .line 63
    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$1;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    new-instance v0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu$2;-><init>(Lcom/sec/android/app/camera/menu/AbstractBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeView:Z

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisablePageNavigatorsGroup:Z

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    .line 114
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    .line 115
    new-instance v0, Lcom/sec/android/app/camera/menu/PopupLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/camera/menu/PopupLayout;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPopupLayout:Lcom/sec/android/app/camera/menu/PopupLayout;

    .line 116
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPopupLayout:Lcom/sec/android/app/camera/menu/PopupLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/PopupLayout;->clear()V

    .line 121
    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    .line 122
    return-void
.end method

.method public enableRecordingAnimation()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingAnimation:Z

    .line 127
    return-void
.end method

.method public endShutterProgressWheel()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setDim(IZ)V

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 136
    return-void
.end method

.method protected abstract getAnchor(I)Lcom/samsung/android/glview/GLImage;
.end method

.method public abstract getIndicators()Lcom/sec/android/app/camera/menu/Indicators;
.end method

.method public getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayLayout:Lcom/sec/android/app/camera/menu/OverlayLayout;

    return-object v0
.end method

.method public getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPopupLayout:Lcom/sec/android/app/camera/menu/PopupLayout;

    return-object v0
.end method

.method public hidePage(I)V
    .locals 2
    .param p1, "commandID"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 155
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 163
    :pswitch_0
    const-string v0, "AbstractMenu"

    const-string v1, "wrong commandId. please check commandId."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1d4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hidePageNavigators()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "AbstractMenu"

    const-string v1, "hidePageNavigators"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public abstract hideView(I)V
.end method

.method public isDefaultPageSelected()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/PageNavigator;->isDefaultPageSelected()Z

    move-result v0

    goto :goto_0
.end method

.method public isDimmed(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 190
    sparse-switch p1, :sswitch_data_0

    .line 200
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 192
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 196
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->isDim()Z

    move-result v0

    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public isPressed(I)Z
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 205
    packed-switch p1, :pswitch_data_0

    .line 211
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isShutterProgressWheelVisible()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeBaseMenuVIAnimation()V
.end method

.method protected onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-lez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->disableSwipeEvent()V

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraGestureManager:Lcom/sec/android/app/camera/provider/CameraGestureManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 438
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "commandID"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 225
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 233
    :pswitch_0
    const-string v0, "AbstractMenu"

    const-string v1, "wrong commandId. please check commandId."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    goto :goto_0

    .line 230
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->onPageSelected(I)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1d4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public registerEAM(I)V
    .locals 3
    .param p1, "bitMarker"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mOverlayHelp:Lcom/sec/android/app/camera/menu/OverlayHelp;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_0

    .line 246
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    .line 249
    :cond_2
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->registerItem(Landroid/content/BroadcastReceiver;I)V

    goto :goto_0
.end method

.method public requestFocus(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resetPageNavigatorItem()V
    .locals 2

    .prologue
    const/16 v1, 0x1d4e

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    .line 282
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->hidePage(I)V

    goto :goto_1
.end method

.method protected resetView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShutterButton:Z

    .line 443
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableRecordingButton:Z

    .line 444
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 445
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableSideQuickSetting:Z

    .line 446
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableShootingModeView:Z

    .line 447
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableOverlayLayout:Z

    .line 448
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableIndicators:Z

    .line 449
    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisablePageNavigatorsGroup:Z

    .line 450
    return-void
.end method

.method protected setAttachMode(Z)V
    .locals 3
    .param p1, "attachMode"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 458
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eq v0, p1, :cond_0

    .line 459
    iput-boolean p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    .line 461
    if-eqz p1, :cond_1

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 464
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 467
    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDisableThumbnailButton:Z

    .line 468
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V

    goto :goto_0
.end method

.method public setCoverCamera(Z)V
    .locals 6
    .param p1, "coverCamera"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 287
    const-string v0, "AbstractMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoverCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-nez p1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 290
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraRecordButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraCloseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCoverCameraFlashButton:Lcom/sec/android/app/camera/widget/gl/Item;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/Item;->setVisibility(IZ)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 295
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->unregisterEAM(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setRotatableForCoverCamera(Z)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->moveBaseLayoutAbsolute(FF)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCoverOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->showView(I)V

    .line 303
    :cond_3
    return-void
.end method

.method public setDim(IZ)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "dim"    # Z

    .prologue
    .line 307
    sparse-switch p1, :sswitch_data_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 309
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    .line 310
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FLOATING_CAMERA_BUTTON:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mFloatingCameraButton:Lcom/sec/android/app/camera/widget/gl/FloatingButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/FloatingButton;->setDim(Z)V

    goto :goto_0

    .line 315
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mRecordingButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    goto :goto_0

    .line 318
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setDim(Z)V

    goto :goto_0

    .line 307
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method protected declared-synchronized setShootingModeView(Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 2
    .param p1, "shootingModeViewLayout"    # Lcom/samsung/android/glview/GLViewGroup;
    .param p2, "shootingModeControllerLayout"    # Lcom/samsung/android/glview/GLViewGroup;

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->resetView()V

    .line 481
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeViewLayout:Lcom/samsung/android/glview/GLViewGroup;

    .line 482
    iput-object p2, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShootingModeControllerLayout:Lcom/samsung/android/glview/GLViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShutterProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    .line 327
    int-to-double v2, p1

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 328
    .local v0, "arcProgress":I
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 329
    return-void
.end method

.method public setThumbnailOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailOrientation(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setThumbnailUri(Landroid/net/Uri;)V

    .line 343
    :cond_0
    return-void
.end method

.method public showPage(I)V
    .locals 2
    .param p1, "commandID"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 350
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 358
    :pswitch_0
    const-string v0, "AbstractMenu"

    const-string v1, "wrong commandId. please check commandId."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    .line 355
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/16 v1, 0x1d4e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->showPage(I)V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1d4c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showPageNavigators()V
    .locals 2

    .prologue
    .line 365
    const-string v0, "AbstractMenu"

    const-string v1, "showPageNavigators"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mPageNavigator:Lcom/sec/android/app/camera/menu/PageNavigator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/menu/PageNavigator;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method protected showThumbnailButton()V
    .locals 2

    .prologue
    .line 486
    const-string v0, "AbstractMenu"

    const-string v1, "showThumbnailButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAttachMode:Z

    if-eqz v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->setVisibility(I)V

    .line 491
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->registerEAM(I)V

    goto :goto_0
.end method

.method public abstract showView(I)V
.end method

.method public startShutterProgressWheel()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mDimState:Z

    .line 379
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->setDim(IZ)V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setProgress(I)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mShutterProgressWheel:Lcom/sec/android/app/camera/widget/gl/ProgressWheel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProgressWheel;->setVisibility(I)V

    .line 383
    return-void
.end method

.method public unregisterEAM(I)V
    .locals 3
    .param p1, "bitMarker"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    if-eqz v0, :cond_1

    .line 387
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMSwitchCameraReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 390
    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mAssistantMenu:Lcom/sec/android/app/camera/menu/EnhancedAssistant;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mEAMGalleryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/menu/EnhancedAssistant;->unregisterItem(Landroid/content/BroadcastReceiver;I)V

    .line 395
    :cond_1
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update()V

    goto :goto_0
.end method

.method public updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .param p1, "data"    # Landroid/graphics/Bitmap;
    .param p2, "orientation"    # I
    .param p3, "needFlip"    # Z

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AbstractBaseMenu;->mThumbnailButton:Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/camera/widget/gl/ThumbnailButton;->update(Landroid/graphics/Bitmap;IZ)V

    .line 415
    :cond_0
    return-void
.end method

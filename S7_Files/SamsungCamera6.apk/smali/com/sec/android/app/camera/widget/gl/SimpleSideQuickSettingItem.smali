.class public Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
.super Lcom/sec/android/app/camera/widget/gl/Item;
.source "SimpleSideQuickSettingItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSideQuickSettingItem"


# instance fields
.field private mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V
    .locals 2
    .param p1, "cameraContext"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "data"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p7, "command"    # Lcom/sec/android/app/camera/command/MenuCommand;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/camera/widget/gl/Item;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mTitle:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->init()V

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addButtonToDimController(Lcom/samsung/android/glview/GLView;)V

    .line 42
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->removeButtonFromDimController(Lcom/samsung/android/glview/GLView;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 51
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/gl/Item;->clear()V

    .line 52
    return-void
.end method

.method protected clearContent()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->clear()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .line 136
    :cond_0
    return-void
.end method

.method protected init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0b01ce

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v4, v3

    const v3, 0x7f0b01cd

    .line 141
    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v5, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v6

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTitle(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTextVisibility(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setHighlightVisibility(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setFocusListener(Lcom/samsung/android/glview/GLView$FocusListener;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setObjectTag(Ljava/lang/String;)V

    .line 147
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDimmed:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 152
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDimmed:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setDim(Z)V

    .line 153
    return-void
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 3
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "SimpleSideQuickSettingItem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute Menu!!!!, CommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public refreshItem()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V

    .line 68
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setAlpha(F)V

    .line 75
    :cond_0
    return-void
.end method

.method public setDim(Z)V
    .locals 2
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDimmed:Z

    .line 81
    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setDim(Z)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setVisibility(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setDim(Z)V

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$KeyListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mKeyListener:Lcom/samsung/android/glview/GLView$KeyListener;

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 106
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 107
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "mute"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setMute(Z)V

    .line 114
    :cond_0
    return-void
.end method

.method public setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/android/glview/GLView$TouchListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 126
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/widget/gl/Item;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 127
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->mDataButton:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    goto :goto_0
.end method

.class public Lcom/sec/android/app/camera/menu/EasySideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "EasySideQuickSetting.java"


# instance fields
.field private final ITEM_HEIGHT:I

.field private final ITEM_PADDING_Y:I

.field private final ITEM_WIDTH:I

.field private final MENU_HEIGHT:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFF)V
    .locals 38
    .param p1, "activityCamera"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 57
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const v2, 0x7f0b01cd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    .line 43
    const v2, 0x7f0b01cc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    .line 44
    const v2, 0x7f0b00cc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_PADDING_Y:I

    .line 45
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_PADDING_Y:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->MENU_HEIGHT:I

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    .line 48
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    .line 59
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 62
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v2, :cond_0

    .line 63
    const/16 v2, 0xbc4

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v34

    .line 64
    .local v34, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v34

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v34

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v34

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc4

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v34

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 66
    .local v8, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 68
    .local v9, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 69
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    .end local v8    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v9    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v34    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v2, :cond_2

    .line 74
    :cond_1
    const/16 v2, 0xbc5

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v35

    .line 75
    .local v35, "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v35

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v35

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v35

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc5

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v35

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 76
    .local v16, "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 78
    .local v17, "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    .end local v16    # "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v35    # "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const/16 v2, 0xbc3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v36

    .line 86
    .local v36, "resIDsHelp":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v24, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v36

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v36

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v36

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v36

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 89
    .local v24, "bundleHelp":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xbc3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v25

    .line 90
    .local v25, "cmdHelp":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v21, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 95
    .end local v24    # "bundleHelp":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v25    # "cmdHelp":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v36    # "resIDsHelp":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v37

    .line 96
    .local v37, "resIDsSwitchCamera":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v32, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v37

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v37

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v37

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x24

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v37

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 97
    .local v32, "bundleSwitchCamera":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v33

    .line 99
    .local v33, "cmdSwitchCamera":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v26, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v31, v0

    invoke-direct/range {v26 .. v33}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 101
    return-void
.end method

.method private showQuickMenuItems()V
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setAlpha(F)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setVisibility(I)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSideQuickSetting()V
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 107
    .local v1, "previousItem":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "previousItem":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 111
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 7
    .param p1, "ids"    # [I

    .prologue
    const/4 v4, 0x0

    .line 115
    move-object v1, p1

    .line 117
    .local v1, "commandIDs":[I
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, v1, v3

    .line 118
    .local v0, "commandID":I
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    .line 119
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setDim(Z)V

    .line 121
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;->setOrientation(I)V

    .line 122
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 117
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "commandID":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/util/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mHelpButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/EasySideQuickSettingItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/EasySideQuickSetting;->showQuickMenuItems()V

    .line 137
    return-void
.end method

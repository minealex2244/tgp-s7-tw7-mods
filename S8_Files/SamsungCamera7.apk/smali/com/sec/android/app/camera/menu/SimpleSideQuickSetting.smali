.class public Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "SimpleSideQuickSetting.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleSideQuickSetting"


# instance fields
.field private final ITEM_HEIGHT:I

.field private final ITEM_PADDING:I

.field private final ITEM_WIDTH:I

.field private SIDEQUICKSETTING_HEIGHT:I

.field private SIDEQUICKSETTING_ORIENTATION:I

.field private SIDEQUICKSETTING_WIDTH:I

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCurrentAddItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

.field private mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

.field private mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

.field private mQuickMenuItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;IFFFF)V
    .locals 6
    .param p1, "activityCamera"    # Lcom/sec/android/app/camera/interfaces/CameraContext;
    .param p2, "orientation"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F

    .prologue
    .line 60
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    const v0, 0x7f0a029f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    .line 44
    const v0, 0x7f0a029e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    .line 45
    const v0, 0x7f0a0131

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    .line 62
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 63
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    .line 64
    float-to-int v0, p5

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    .line 65
    float-to-int v0, p6

    iput v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->init()V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setClipping(Z)V

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerExtraInfoChangeListener(Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;)V

    .line 70
    return-void
.end method

.method private init()V
    .locals 38

    .prologue
    .line 183
    const/16 v2, 0x24

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v37

    .line 184
    .local v37, "resIDsSwitchCamera":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 185
    .local v8, "bundleSwitchCamera":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    .line 186
    .local v9, "cmdSwitchCamera":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 187
    :cond_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 191
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_REAR_RT_HDR:Z

    if-eqz v2, :cond_1

    .line 196
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v36

    .line 197
    .local v36, "resIDsHdr":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    const/16 v4, 0xc

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v36

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 198
    .local v16, "bundleHdr":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xc

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    .line 199
    .local v17, "cmdHdr":Lcom/sec/android/app/camera/command/MenuCommand;
    new-instance v10, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v15, v2

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    .end local v16    # "bundleHdr":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v17    # "cmdHdr":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v36    # "resIDsHdr":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FLASH:Z

    if-eqz v2, :cond_3

    .line 206
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v34

    .line 207
    .local v34, "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v24, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v34

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 208
    .local v24, "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v25

    .line 209
    .local v25, "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 210
    :cond_2
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v20, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    int-to-float v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 214
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    .end local v24    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v25    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v34    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_3
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_FRONT_FLASH:Z

    if-eqz v2, :cond_5

    .line 220
    const/16 v2, 0xaa

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v35

    .line 221
    .local v35, "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v32, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    const/16 v4, 0xaa

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v35

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v32

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    .line 222
    .local v32, "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    const/16 v2, 0xaa

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v33

    .line 223
    .local v33, "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 224
    :cond_4
    new-instance v26, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v28, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    int-to-float v0, v2

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v31, v0

    invoke-direct/range {v26 .. v33}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 228
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual/range {v32 .. v32}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    .end local v32    # "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v33    # "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v35    # "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_5
    return-void

    .line 189
    :cond_6
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v7, v7

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    goto/16 :goto_0

    .line 212
    .restart local v24    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v25    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v34    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_7
    new-instance v18, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v21, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    goto/16 :goto_1

    .line 226
    .end local v24    # "bundleFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .end local v25    # "cmdFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .end local v34    # "resIDsFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .restart local v32    # "bundleFrontFlash":Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .restart local v33    # "cmdFrontFlash":Lcom/sec/android/app/camera/command/MenuCommand;
    .restart local v35    # "resIDsFrontFlash":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_8
    new-instance v26, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_PADDING:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v29, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_WIDTH:I

    int-to-float v0, v2

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->ITEM_HEIGHT:I

    int-to-float v0, v2

    move/from16 v31, v0

    invoke-direct/range {v26 .. v33}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    goto/16 :goto_2
.end method

.method private showQuickMenuItems()V
    .locals 3

    .prologue
    .line 234
    const-string v1, "SimpleSideQuickSetting"

    const-string v2, "showQuickMenuItems"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setAlpha(F)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setVisibility(I)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterExtraInfoChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$ExtraInfoChangedListener;)V

    .line 78
    :cond_0
    return-void
.end method

.method public clearSideQuickSetting()V
    .locals 4

    .prologue
    .line 81
    const-string v2, "SimpleSideQuickSetting"

    const-string v3, "clearSideQuickSetting"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 85
    .local v1, "previousItem":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->removeView(Lcom/samsung/android/glview/GLView;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "previousItem":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 89
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onExtraInfoChanged(II)V
    .locals 6
    .param p1, "menuId"    # I
    .param p2, "modeId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 93
    .local v0, "item":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->isDim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/16 v1, 0xaa

    if-ne p1, v1, :cond_5

    .line 97
    :cond_2
    if-ne p2, v5, :cond_4

    .line 98
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setSelected(Z)V

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->resetTint()V

    .line 110
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->updateLayout(Z)V

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setSelected(Z)V

    goto :goto_1

    .line 102
    :cond_5
    const/16 v1, 0xc

    if-ne p1, v1, :cond_3

    .line 103
    if-ne p2, v5, :cond_6

    .line 104
    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setSelected(Z)V

    goto :goto_1

    .line 106
    :cond_6
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setSelected(Z)V

    goto :goto_1
.end method

.method protected resizeSideQuickSetting(III)V
    .locals 7
    .param p1, "orientation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 135
    const-string v4, "SimpleSideQuickSetting"

    const-string v5, "resizeSideQuickSetting"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 138
    .local v3, "tempAddItemList":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->getCommandId()I

    move-result v4

    aput v4, v3, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->clearSideQuickSetting()V

    .line 143
    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSize(FF)V

    .line 144
    iput p1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    .line 145
    iput p2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    .line 146
    iput p3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->init()V

    .line 149
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget v0, v3, v4

    .line 150
    .local v0, "commandID":I
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 151
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    if-eqz v2, :cond_1

    .line 152
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 149
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "commandID":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->showQuickMenuItems()V

    .line 158
    return-void
.end method

.method protected setSideQuickSettingSize(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 161
    const-string v0, "SimpleSideQuickSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSideQuickSettingSize : original wh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to wh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->setSize(FF)V

    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_ORIENTATION:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    sub-int/2addr v1, p2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_HEIGHT:I

    sub-int/2addr v1, p2

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mHdrButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    .line 175
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mFrontFlashButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    iget v1, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->SIDEQUICKSETTING_WIDTH:I

    sub-int/2addr v1, p1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0
.end method

.method public varargs updateSideQuickSetting([I)V
    .locals 7
    .param p1, "ids"    # [I

    .prologue
    const/4 v4, 0x0

    .line 114
    const-string v3, "SimpleSideQuickSetting"

    const-string v5, "updateSideQuickSetting"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move-object v1, p1

    .line 118
    .local v1, "commandIDs":[I
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget v0, v1, v3

    .line 119
    .local v0, "commandID":I
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mQuickMenuItemList:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    .line 120
    .local v2, "item":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->setDim(Z)V

    .line 122
    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;->refreshItem()V

    .line 123
    iget-object v6, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 118
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "commandID":I
    .end local v2    # "item":Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mCurrentAddItemList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->mSwitchCameraButton:Lcom/sec/android/app/camera/widget/gl/SimpleSideQuickSettingItem;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/SimpleSideQuickSetting;->showQuickMenuItems()V

    .line 132
    return-void
.end method

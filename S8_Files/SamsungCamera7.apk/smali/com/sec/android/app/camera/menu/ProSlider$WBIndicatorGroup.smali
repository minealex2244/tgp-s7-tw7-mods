.class Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WBIndicatorGroup"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/glview/GLView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ProSlider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[II)V
    .locals 15
    .param p2, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "stepArray"    # [I
    .param p8, "settingId"    # I

    .prologue
    .line 1059
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1060
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 1057
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->mList:Ljava/util/ArrayList;

    .line 1062
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v2, v0

    if-ge v11, v2, :cond_0

    .line 1063
    move/from16 v0, p8

    invoke-static {v0, v11}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v14

    .line 1065
    .local v14, "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    new-instance v1, Lcom/samsung/android/glview/GLButton;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3300(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v5

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->AUTO_LABEL_WIDTH:F
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3300(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v6

    iget v7, v14, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    iget v8, v14, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    iget v9, v14, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    .line 1066
    .local v1, "wbIndicator":Lcom/samsung/android/glview/GLButton;
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, v14, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    .line 1067
    aget v2, p7, v11

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    .line 1068
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    .line 1069
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    .line 1070
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    .line 1071
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setClickable(Z)V

    .line 1072
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 1073
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 1074
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mWBIndicatorTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 1076
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->WB_LABEL_GROUP_HEIGHT:F
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$3500(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v2

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    move-object/from16 v0, p7

    array-length v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p7

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 1077
    .local v12, "offset":F
    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v2

    add-float/2addr v2, v12

    int-to-float v3, v11

    mul-float v13, v2, v3

    .line 1078
    .local v13, "posY":F
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v13}, Lcom/samsung/android/glview/GLButton;->moveBaseLayout(FF)V

    .line 1080
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$WBIndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 1062
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1083
    .end local v1    # "wbIndicator":Lcom/samsung/android/glview/GLButton;
    .end local v12    # "offset":F
    .end local v13    # "posY":F
    .end local v14    # "res":Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    :cond_0
    return-void
.end method

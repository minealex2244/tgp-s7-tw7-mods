.class Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "ProSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/sec/android/app/camera/widget/gl/TickSlider$TickSliderLayoutUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/ProSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelGroup"
.end annotation


# instance fields
.field private mIsCenterPivot:Z

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
    .locals 13
    .param p2, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "stepArray"    # [I
    .param p8, "settingId"    # I

    .prologue
    .line 892
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 893
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    .line 844
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mIsCenterPivot:Z

    .line 895
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mIsCenterPivot:Z

    .line 896
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v1

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->TICK_BAR_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2300(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v2

    sub-float/2addr v1, v2

    move-object/from16 v0, p7

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 898
    .local v9, "offset":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v1, v0

    if-ge v7, v1, :cond_0

    .line 899
    add-int/lit8 v1, v7, 0x1

    move/from16 v0, p8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    iget v11, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    .line 900
    .local v11, "resource":I
    add-int/lit8 v1, v7, 0x1

    move/from16 v0, p8

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v1

    iget v12, v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    .line 901
    .local v12, "title":I
    new-instance v8, Lcom/samsung/android/glview/GLImage;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v8, v1, v2, v3, v11}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    .line 902
    .local v8, "imageLabel":Lcom/samsung/android/glview/GLImage;
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setTitle(Ljava/lang/String;)V

    .line 903
    aget v1, p7, v7

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setTag(I)V

    .line 904
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    .line 905
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    .line 906
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    .line 907
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setClickable(Z)V

    .line 908
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setFocusable(Z)V

    .line 909
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 910
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 911
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/glview/GLImage;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 913
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TOP_MARGIN:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2900(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v1

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v2

    add-float/2addr v1, v2

    int-to-float v2, v7

    mul-float/2addr v2, v9

    sub-float v10, v1, v2

    .line 914
    .local v10, "posY":F
    const/4 v1, 0x0

    invoke-virtual {v8, v1, v10}, Lcom/samsung/android/glview/GLImage;->moveBaseLayout(FF)V

    .line 916
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 898
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 919
    .end local v8    # "imageLabel":Lcom/samsung/android/glview/GLImage;
    .end local v10    # "posY":F
    .end local v11    # "resource":I
    .end local v12    # "title":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/menu/ProSlider;Lcom/samsung/android/glview/GLContext;FFFF[I[Ljava/lang/String;Z)V
    .locals 14
    .param p2, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "stepArray"    # [I
    .param p8, "textArray"    # [Ljava/lang/String;
    .param p9, "isCenterPivot"    # Z

    .prologue
    .line 847
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->this$0:Lcom/sec/android/app/camera/menu/ProSlider;

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 848
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 842
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    .line 844
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mIsCenterPivot:Z

    .line 850
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mIsCenterPivot:Z

    .line 852
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_SIZE:I
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1900(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->getMaxTextWidth([Ljava/lang/String;I)F

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2000(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float v5, v2, v3

    .line 853
    .local v5, "textWidth":F
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2100(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v6

    .line 854
    .local v6, "textHeight":F
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->TICK_BAR_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2300(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p7

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 856
    .local v12, "offset":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v2, v0

    if-ge v11, v2, :cond_1

    .line 857
    new-instance v1, Lcom/samsung/android/glview/GLText;

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2400(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v7, p7, v11

    aget-object v7, p8, v7

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_SIZE:I
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1900(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v8

    int-to-float v8, v8

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_COLOR:I
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2500(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    .line 858
    .local v1, "textLabel":Lcom/samsung/android/glview/GLText;
    aget v2, p7, v11

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTag(I)V

    .line 859
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    .line 860
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    .line 861
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    .line 862
    const/4 v2, 0x1

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_WIDTH:I
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2600(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v3

    int-to-float v3, v3

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TEXT_STROKE_COLOR:I
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2700(Lcom/sec/android/app/camera/menu/ProSlider;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    .line 863
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setClickable(Z)V

    .line 864
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setFocusable(Z)V

    .line 865
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mSlider:Lcom/sec/android/app/camera/widget/gl/TickSlider;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$1800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/widget/gl/TickSlider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setNextFocusRightView(Lcom/samsung/android/glview/GLView;)Z

    .line 866
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    .line 867
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->mLabelTouchListener:Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2800(Lcom/sec/android/app/camera/menu/ProSlider;)Lcom/sec/android/app/camera/menu/ProSlider$LabelTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 869
    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_TOP_MARGIN:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2900(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v2

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->SLIDER_HEIGHT:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2200(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v3

    add-float/2addr v2, v3

    int-to-float v3, v11

    mul-float/2addr v3, v12

    sub-float v13, v2, v3

    .line 870
    .local v13, "posY":F
    if-eqz p9, :cond_0

    .line 871
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 872
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 874
    sub-float v2, v5, p5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v1, v2, v13}, Lcom/samsung/android/glview/GLText;->moveBaseLayout(FF)V

    .line 884
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 856
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 876
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setCenterPivot(Z)V

    .line 877
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotateAnimation(Z)V

    .line 879
    const/4 v2, 0x0

    const/4 v3, 0x0

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2000(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3, v13}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 880
    const/4 v2, 0x2

    # getter for: Lcom/sec/android/app/camera/menu/ProSlider;->LABEL_MARGIN:F
    invoke-static {p1}, Lcom/sec/android/app/camera/menu/ProSlider;->access$2000(Lcom/sec/android/app/camera/menu/ProSlider;)F

    move-result v3

    sub-float v3, v5, v3

    add-float v4, v13, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 881
    const/4 v2, 0x1

    sub-float v3, v6, v5

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v13

    invoke-virtual {v1, v2, v5, v3}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    .line 882
    const/4 v2, 0x3

    sub-float v3, v5, v6

    add-float v4, v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float/2addr v4, v13

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    goto :goto_1

    .line 887
    .end local v1    # "textLabel":Lcom/samsung/android/glview/GLText;
    .end local v13    # "posY":F
    :cond_1
    if-eqz p9, :cond_2

    move/from16 v0, p5

    neg-float v2, v0

    :goto_2
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->moveBaseLayout(FF)V

    .line 888
    if-eqz p9, :cond_3

    .end local p5    # "width":F
    :goto_3
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->setWidth(F)V

    .line 889
    return-void

    .line 887
    .restart local p5    # "width":F
    :cond_2
    neg-float v2, v5

    goto :goto_2

    :cond_3
    move/from16 p5, v5

    .line 888
    goto :goto_3
.end method

.method private getMaxTextWidth([Ljava/lang/String;I)F
    .locals 4
    .param p1, "textArray"    # [Ljava/lang/String;
    .param p2, "textSize"    # I

    .prologue
    .line 980
    const/4 v1, 0x0

    .line 981
    .local v1, "maxWidth":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 982
    aget-object v2, p1, v0

    int-to-float v3, p2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->getStringWidth(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_0
    return v1
.end method


# virtual methods
.method public getView(I)Lcom/samsung/android/glview/GLView;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 923
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 924
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 928
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 933
    iget-boolean v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mIsCenterPivot:Z

    if-nez v3, :cond_0

    .line 934
    const/4 v0, 0x2

    .line 935
    .local v0, "hAlign":I
    packed-switch p1, :pswitch_data_0

    .line 950
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/glview/GLView;

    .local v1, "label":Lcom/samsung/android/glview/GLView;
    move-object v2, v1

    .line 951
    check-cast v2, Lcom/samsung/android/glview/GLText;

    .line 952
    .local v2, "textLabel":Lcom/samsung/android/glview/GLText;
    const/4 v4, 0x2

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    goto :goto_1

    .line 937
    .end local v1    # "label":Lcom/samsung/android/glview/GLView;
    .end local v2    # "textLabel":Lcom/samsung/android/glview/GLText;
    :pswitch_0
    const/4 v0, 0x3

    .line 938
    goto :goto_0

    .line 940
    :pswitch_1
    const/4 v0, 0x1

    .line 941
    goto :goto_0

    .line 944
    :pswitch_2
    const/4 v0, 0x2

    .line 945
    goto :goto_0

    .line 955
    .end local v0    # "hAlign":I
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLViewGroup;->onOrientationChanged(I)V

    .line 956
    return-void

    .line 935
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTickSliderLayoutReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 960
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 961
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_0

    .line 963
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_0
    return-void
.end method

.method public onTickSliderLayoutUpdated()V
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->updateLayout(Z)V

    .line 968
    return-void
.end method

.method public onTickSliderLayoutUpdating(IF)V
    .locals 4
    .param p1, "step"    # I
    .param p2, "offset"    # F

    .prologue
    .line 972
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ProSlider$LabelGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/glview/GLView;

    .line 973
    .local v0, "view":Lcom/samsung/android/glview/GLView;
    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 974
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Lcom/samsung/android/glview/GLView;->translateAbsolute(FFZ)V

    goto :goto_0

    .line 977
    .end local v0    # "view":Lcom/samsung/android/glview/GLView;
    :cond_1
    return-void
.end method

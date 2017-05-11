.class public Lcom/samsung/android/glview/GLSlider;
.super Lcom/samsung/android/glview/GLView;
.source "GLSlider.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/samsung/android/glview/GLView$KeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/glview/GLSlider$SliderChangeListener;,
        Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;
    }
.end annotation


# static fields
.field private static final ORDER_ASCENDING:I = 0xa

.field private static final ORDER_DESCENDING:I = 0xb

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final ORIENTATION_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLSlider"


# instance fields
.field protected mCurrentStep:I

.field protected mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

.field protected mGaugeMarker:Lcom/samsung/android/glview/GLButton;

.field private mGaugeMarkerBasePositionX:F

.field private mGaugeMarkerBasePositionY:F

.field protected mGaugeMarkerPos:Landroid/graphics/PointF;

.field protected mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

.field private mGaugeMarkerVisible:I

.field private mIsNonZeroBase:Z

.field protected mNumOfStep:I

.field private mOrder:I

.field protected mOrientation:I

.field protected mSliderBackground:Lcom/samsung/android/glview/GLView;

.field protected mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

.field protected mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 5
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "numOfStep"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 51
    iput-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 52
    iput-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 53
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 57
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 62
    if-lez p6, :cond_0

    .line 63
    iput p6, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 64
    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_1

    .line 65
    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 74
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 75
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 69
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIIZ)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "backgroundResId"    # I
    .param p7, "gaugeBarResId"    # I
    .param p8, "numOfStep"    # I
    .param p9, "isNinePatchBackground"    # Z

    .prologue
    .line 104
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 106
    if-eqz p9, :cond_1

    .line 107
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    .line 111
    :goto_0
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 114
    if-lez p8, :cond_0

    .line 115
    iput p8, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 116
    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_2

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 118
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    .line 124
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->init()V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 129
    return-void

    .line 109
    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 121
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIIZ)V
    .locals 7
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "backgroundResId"    # I
    .param p7, "numOfStep"    # I
    .param p8, "isNinePatchBackground"    # Z

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 80
    if-eqz p8, :cond_1

    .line 81
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    .line 86
    :goto_0
    if-lez p7, :cond_0

    .line 87
    iput p7, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 88
    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_2

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 90
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    .line 96
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->init()V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    .line 99
    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 101
    return-void

    .line 83
    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 93
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFLcom/samsung/android/glview/GLView;I)V
    .locals 5
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "backgroundResId"    # Lcom/samsung/android/glview/GLView;
    .param p7, "numOfStep"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 51
    iput-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 52
    iput-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 53
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 57
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 134
    iput-object p6, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    .line 136
    if-lez p7, :cond_0

    .line 137
    iput p7, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 138
    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_1

    .line 139
    iput v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 140
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->init()V

    .line 148
    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setFocusable(Z)V

    .line 149
    invoke-virtual {p0, p0}, Lcom/samsung/android/glview/GLSlider;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 151
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 143
    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 4
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "numOfStep"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 43
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    .line 50
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    .line 51
    iput-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 52
    iput-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 53
    iput v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 55
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 56
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 57
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 156
    if-lez p4, :cond_0

    .line 157
    iput p4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    .line 158
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 886
    :cond_1
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 913
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 914
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 916
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 920
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 923
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 924
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 925
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 926
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 929
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 930
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    div-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 934
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private setStepIndicatorPosition(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stepRatio":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Float;>;"
    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    .line 889
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v1, v7, :cond_1

    .line 890
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 892
    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v4

    sub-float v4, v1, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Float;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-direct {v3, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 896
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v3

    sub-float v3, v2, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Float;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 895
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 899
    .end local v0    # "i":I
    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 900
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 902
    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v1

    div-float v4, v1, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Float;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 905
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge v0, v1, :cond_3

    .line 906
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v2

    div-float v3, v2, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Float;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 910
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->clear()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    .line 174
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 176
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableGaugeMarkerRippleEffect(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    .line 186
    return-void
.end method

.method public expandTouchAreaFromCenter(FF)V
    .locals 3
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 189
    neg-float v0, p1

    neg-float v1, p2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v0

    mul-float v1, p1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLView;->moveLayout(FF)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->moveLayout(FF)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    .line 203
    :cond_2
    return-void
.end method

.method protected findNearestStepId(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 770
    const/4 v1, 0x0

    .line 771
    .local v1, "interval":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v2, v3, v5

    .line 773
    .local v2, "slideBarHeight":F
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 774
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v3

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v1, v3, v5

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 776
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    .line 777
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 806
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 780
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 775
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 784
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    move v0, v4

    .line 785
    goto :goto_1

    .line 786
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_9

    .line 787
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 789
    .end local v0    # "i":I
    :cond_5
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 790
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 791
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 792
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_6

    .line 793
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-lez v3, :cond_0

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 791
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 800
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_8

    move v0, v4

    .line 801
    goto/16 :goto_1

    .line 802
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_9

    .line 803
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto/16 :goto_1

    .line 806
    .end local v0    # "i":I
    :cond_9
    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method public getLoaded()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v0

    .line 220
    :goto_0
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->load()Z

    move-result v0

    goto :goto_0

    .line 220
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMarkerVisible()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    return v0
.end method

.method public getNumOfStep()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    return v0
.end method

.method public getStepPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public isMarkerPressed()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isPressed()Z

    move-result v0

    .line 733
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveStep(I)Z
    .locals 12
    .param p1, "to"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 247
    if-ltz p1, :cond_5

    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge p1, v3, :cond_5

    .line 248
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v1

    .line 249
    .local v1, "newStep":I
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-ne v3, v1, :cond_0

    move v3, v4

    .line 287
    .end local v1    # "newStep":I
    :goto_0
    return v3

    .line 253
    .restart local v1    # "newStep":I
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 254
    .local v2, "oldPos":Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 256
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 257
    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v8, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_3

    .line 259
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v3, v4, :cond_4

    .line 260
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v6, v9, v5}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FFZ)V

    .line 261
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v3, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 262
    .local v0, "moveAnim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 263
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 265
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 266
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 278
    .end local v0    # "moveAnim":Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    if-eqz v3, :cond_2

    .line 279
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    invoke-interface {v3}, Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;->onGaugeMarkerPositionUpdated()V

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_3

    .line 282
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    :cond_3
    move v3, v4

    .line 285
    goto/16 :goto_0

    .line 268
    :cond_4
    iget v3, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 269
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v9, v6, v5}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FFZ)V

    .line 270
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {v0, v9, v9, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 271
    .restart local v0    # "moveAnim":Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v6, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v6}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 272
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3, v0}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    goto :goto_1

    .end local v0    # "moveAnim":Landroid/view/animation/Animation;
    .end local v1    # "newStep":I
    .end local v2    # "oldPos":Landroid/graphics/PointF;
    :cond_5
    move v3, v5

    .line 287
    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->onAlphaUpdated()V

    .line 304
    :cond_2
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLView;->draw([FLandroid/graphics/Rect;)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 820
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->draw([FLandroid/graphics/Rect;)V

    .line 822
    :cond_2
    return-void
.end method

.method public onKeyDown(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x13

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "value":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    .line 310
    .local v0, "orientation":I
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v8, :cond_3

    :cond_0
    if-ne v0, v2, :cond_1

    .line 311
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-eq v3, v4, :cond_3

    :cond_1
    if-ne v0, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_3

    :cond_2
    if-ne v0, v6, :cond_6

    .line 312
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_6

    .line 313
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_4

    .line 314
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    .line 316
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 319
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_5

    .line 320
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 345
    :cond_5
    :goto_0
    return v2

    .line 323
    :cond_6
    if-nez v0, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v7, :cond_a

    :cond_7
    if-ne v0, v2, :cond_8

    .line 324
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_a

    :cond_8
    if-ne v0, v5, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v8, :cond_a

    :cond_9
    if-ne v0, v6, :cond_c

    .line 325
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_c

    .line 326
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v3, :cond_b

    .line 327
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v1

    .line 329
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 332
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v3, :cond_5

    .line 333
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    goto :goto_0

    .line 336
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 339
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x17

    if-eq v3, v4, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_5

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->requestFocus()Z

    .line 345
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(Lcom/samsung/android/glview/GLView;Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

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

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 826
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 828
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->onLayoutUpdated()V

    .line 837
    :cond_2
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 841
    const/4 v0, 0x1

    .line 843
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLView;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 849
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_2

    .line 850
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLButton;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 852
    :cond_2
    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLView;->reset()V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->reset()V

    .line 366
    :cond_2
    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 370
    invoke-virtual {p0, p2}, Lcom/samsung/android/glview/GLSlider;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 375
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 376
    .local v0, "et":Landroid/view/MotionEvent;
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/samsung/android/glview/GLSlider;->mapPointReverse([FFF)V

    .line 377
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mTransformedScreenCoordinate:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 378
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-nez v10, :cond_0

    .line 379
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 380
    const/4 v10, 0x1

    .line 577
    :goto_0
    return v10

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    add-float v6, v10, v11

    .line 383
    .local v6, "slideBarTop":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getHeight()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v4, v10, v11

    .line 384
    .local v4, "slideBarHeight":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    add-float v5, v10, v11

    .line 385
    .local v5, "slideBarLeft":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v11}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    int-to-float v11, v11

    sub-float v7, v10, v11

    .line 387
    .local v7, "slideBarWidth":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_9

    .line 388
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 389
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 390
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getWidth()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 391
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 392
    const/4 v10, 0x0

    goto :goto_0

    .line 394
    :cond_2
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v12

    sub-float/2addr v11, v12

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 395
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 414
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_4

    .line 415
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    .line 416
    .local v9, "tempStep":I
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_4

    .line 417
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 418
    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 421
    .end local v9    # "tempStep":I
    :cond_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 422
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 398
    :cond_5
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 399
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    cmpl-float v10, v10, v4

    if-lez v10, :cond_7

    .line 400
    :cond_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 401
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 404
    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v11, v10, v6

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_8

    .line 405
    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    .line 410
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    goto/16 :goto_1

    .line 407
    :cond_8
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 423
    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_14

    .line 424
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 425
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    .line 426
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 427
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b

    .line 428
    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 429
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 433
    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v10, v5

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    .line 434
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    const/4 v11, 0x0

    iput v11, v10, Landroid/graphics/PointF;->x:F

    .line 440
    :goto_3
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 442
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_c

    .line 443
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    .line 444
    .restart local v9    # "tempStep":I
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_c

    .line 445
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 446
    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 475
    .end local v9    # "tempStep":I
    :cond_c
    :goto_4
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 476
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 435
    :cond_d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    sub-float/2addr v10, v5

    cmpl-float v10, v10, v7

    if-lez v10, :cond_e

    .line 436
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iput v7, v10, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 438
    :cond_e
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    sub-float/2addr v11, v5

    iput v11, v10, Landroid/graphics/PointF;->x:F

    goto :goto_3

    .line 449
    :cond_f
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_c

    .line 450
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 451
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_10

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_11

    .line 452
    :cond_10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 453
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 457
    :cond_11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_12

    .line 458
    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    .line 465
    :goto_5
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->setGaugeBarSize()V

    .line 467
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_c

    .line 468
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v9

    .line 469
    .restart local v9    # "tempStep":I
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v9, v10, :cond_c

    .line 470
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 471
    iput v9, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    goto/16 :goto_4

    .line 459
    .end local v9    # "tempStep":I
    :cond_12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float v11, v10, v6

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    cmpl-float v10, v11, v10

    if-lez v10, :cond_13

    .line 460
    iget-object v11, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v12, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v11, Landroid/graphics/PointF;->y:F

    goto :goto_5

    .line 462
    :cond_13
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    sub-float/2addr v11, v6

    iput v11, v10, Landroid/graphics/PointF;->y:F

    goto :goto_5

    .line 477
    :cond_14
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1d

    .line 478
    :cond_15
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 480
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 481
    .local v2, "posX":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 482
    .local v3, "posY":F
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v10

    sub-float v10, v2, v10

    sub-float v11, v3, v6

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/glview/GLSlider;->findNearestStepId(FF)I

    move-result v1

    .line 484
    .local v1, "nearestId":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 485
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_17

    .line 486
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getTop()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getBottom()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    .line 487
    :cond_16
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 488
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 489
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 491
    :cond_17
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_19

    .line 492
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getLeft()F

    move-result v11

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_18

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getRight()F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_19

    .line 493
    :cond_18
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 494
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 495
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 500
    :cond_19
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_1a

    .line 501
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v1, v10, :cond_1a

    .line 502
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 505
    :cond_1a
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 508
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1e

    .line 509
    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/glview/GLSlider$1;

    invoke-direct {v10, p0, v1, v2, v3}, Lcom/samsung/android/glview/GLSlider$1;-><init>(Lcom/samsung/android/glview/GLSlider;IFF)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 535
    .local v8, "t":Ljava/lang/Thread;
    const-string v10, "GaugeTranslationThread"

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 568
    .end local v8    # "t":Ljava/lang/Thread;
    :cond_1b
    :goto_6
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    if-eqz v10, :cond_1c

    .line 569
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-eq v1, v10, :cond_1c

    .line 570
    iget-object v10, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/glview/GLSlider$SliderChangeListener;->onStepChanged(I)V

    .line 573
    :cond_1c
    iput v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 574
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/glview/GLSlider;->setDraggable(Z)V

    .line 576
    .end local v1    # "nearestId":I
    .end local v2    # "posX":F
    .end local v3    # "posY":F
    :cond_1d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 577
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 537
    .restart local v1    # "nearestId":I
    .restart local v2    # "posX":F
    .restart local v3    # "posY":F
    :cond_1e
    iget v10, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1b

    .line 538
    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/glview/GLSlider$2;

    invoke-direct {v10, p0, v1}, Lcom/samsung/android/glview/GLSlider$2;-><init>(Lcom/samsung/android/glview/GLSlider;I)V

    invoke-direct {v8, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 564
    .restart local v8    # "t":Ljava/lang/Thread;
    const-string v10, "GaugeTranslationThread"

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method protected onVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 857
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->onVisibilityChanged(I)V

    .line 865
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->onVisibilityChanged(I)V

    .line 868
    :cond_2
    return-void
.end method

.method public setCurrentStep(I)Z
    .locals 7
    .param p1, "step"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 581
    if-ltz p1, :cond_3

    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_3

    .line 582
    invoke-virtual {p0, p1}, Lcom/samsung/android/glview/GLSlider;->translateStepByOrdering(I)I

    move-result v0

    .line 583
    .local v0, "newStep":I
    const-string v1, "GLSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    .line 598
    .end local v0    # "newStep":I
    :goto_0
    return v1

    .line 587
    .restart local v0    # "newStep":I
    :cond_0
    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    .line 588
    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 589
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_1

    .line 590
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v1, v2, :cond_2

    .line 591
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3, v6}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    :cond_1
    :goto_1
    move v1, v2

    .line 596
    goto :goto_0

    .line 592
    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 593
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/glview/GLButton;->translateAbsolute(FF)V

    goto :goto_1

    .line 598
    .end local v0    # "newStep":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGaugeBar(FFI)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "resId"    # I

    .prologue
    .line 603
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    .line 604
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 605
    return-void
.end method

.method public setGaugeBarSize()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 608
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v4, :cond_0

    .line 609
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v6}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 611
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getTranslateX()F

    move-result v0

    .line 612
    .local v0, "gaugeTranslateX":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLButton;->getTranslateY()F

    move-result v1

    .line 613
    .local v1, "gaugeTranslateY":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getWidth()F

    move-result v3

    .line 614
    .local v3, "sliderBGWidth":F
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLView;->getHeight()F

    move-result v2

    .line 616
    .local v2, "sliderBGHeight":F
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 617
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    if-eqz v4, :cond_2

    .line 618
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 619
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 620
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float v5, v0, v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 625
    :goto_0
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 626
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    .line 651
    .end local v0    # "gaugeTranslateX":F
    .end local v1    # "gaugeTranslateY":F
    .end local v2    # "sliderBGHeight":F
    .end local v3    # "sliderBGWidth":F
    :cond_0
    :goto_1
    return-void

    .line 622
    .restart local v0    # "gaugeTranslateX":F
    .restart local v1    # "gaugeTranslateY":F
    .restart local v2    # "sliderBGHeight":F
    .restart local v3    # "sliderBGWidth":F
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v0, v7, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 623
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    sub-float/2addr v5, v0

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_0

    .line 628
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    add-float v5, v0, v9

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 629
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 630
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1

    .line 632
    :cond_3
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 633
    iget-boolean v4, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    if-eqz v4, :cond_5

    .line 634
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    cmpg-float v4, v1, v4

    if-gez v4, :cond_4

    .line 635
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v7, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 636
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float/2addr v5, v1

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 641
    :goto_2
    iget v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_1

    .line 638
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    invoke-virtual {v4, v7, v5, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 639
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    iget v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    sub-float v5, v1, v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_2

    .line 644
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v7, v1, v6}, Lcom/samsung/android/glview/GLNinePatch;->translateAbsolute(FFZ)V

    .line 645
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    add-float v5, v1, v9

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 646
    sub-float v4, v2, v1

    iget-object v5, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v5}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 647
    iget-object v4, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v4, v8}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public setGaugeMarker(FFII)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "normalId"    # I
    .param p4, "pressResId"    # I

    .prologue
    .line 672
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(FFIILjava/util/List;)V

    .line 673
    return-void
.end method

.method public setGaugeMarker(FFIILjava/util/List;)V
    .locals 10
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "normalId"    # I
    .param p4, "pressResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFII",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "stepRatio":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/Float;>;"
    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 683
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    .line 684
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iput-object p0, v0, Lcom/samsung/android/glview/GLButton;->mParent:Lcom/samsung/android/glview/GLView;

    .line 685
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 687
    if-nez p5, :cond_1

    .line 688
    invoke-direct {p0}, Lcom/samsung/android/glview/GLSlider;->setStepIndicatorPosition()V

    .line 693
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 694
    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 696
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 697
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 699
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    if-ne v0, v9, :cond_2

    .line 700
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    .line 704
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v9}, Lcom/samsung/android/glview/GLButton;->setFocusable(Z)V

    .line 705
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p0}, Lcom/samsung/android/glview/GLButton;->setKeyListener(Lcom/samsung/android/glview/GLView$KeyListener;)V

    .line 706
    return-void

    .line 690
    :cond_1
    invoke-direct {p0, p5}, Lcom/samsung/android/glview/GLSlider;->setStepIndicatorPosition(Ljava/util/List;)V

    goto :goto_0

    .line 701
    :cond_2
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLButton;->getWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLButton;->moveLayout(FF)V

    goto :goto_1
.end method

.method public setGaugeMarker(II)V
    .locals 6
    .param p1, "normalId"    # I
    .param p2, "pressResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 660
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(FFIILjava/util/List;)V

    .line 661
    return-void
.end method

.method public setGaugeMarkerPositionUpdatedListener(Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;)V
    .locals 0
    .param p1, "onGaugeMarkerPositionUpdatedListener"    # Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerPositionUpdatedListener:Lcom/samsung/android/glview/GLSlider$GaugeMarkerPositionUpdatedListener;

    .line 710
    return-void
.end method

.method public setGaugeZeroStep(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 714
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionX:F

    .line 716
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerBasePositionY:F

    .line 718
    :cond_0
    if-lez p1, :cond_1

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/glview/GLSlider;->mIsNonZeroBase:Z

    .line 721
    :cond_1
    return-void
.end method

.method public setMarkerPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 724
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setPressed(Z)V

    .line 727
    :cond_0
    return-void
.end method

.method public setMarkerVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    .line 230
    iput p1, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarkerVisible:I

    .line 232
    :cond_0
    return-void
.end method

.method public setOrder(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 737
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 738
    :cond_0
    iput p1, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    .line 739
    const/4 v0, 0x1

    .line 741
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSliderBackground(FFFFIZ)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "resId"    # I
    .param p6, "isNinePatchBackground"    # Z

    .prologue
    .line 746
    if-eqz p6, :cond_0

    .line 747
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    .line 751
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    iput-object p0, v0, Lcom/samsung/android/glview/GLView;->mParent:Lcom/samsung/android/glview/GLView;

    .line 752
    return-void

    .line 749
    :cond_0
    new-instance v0, Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLSlider;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p5}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mSliderBackground:Lcom/samsung/android/glview/GLView;

    goto :goto_0
.end method

.method public setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V
    .locals 0
    .param p1, "onSliderChangeListener"    # Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .prologue
    .line 755
    iput-object p1, p0, Lcom/samsung/android/glview/GLSlider;->mSliderChangeListener:Lcom/samsung/android/glview/GLSlider$SliderChangeListener;

    .line 756
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 760
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 761
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeBar:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setTint(I)V

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/samsung/android/glview/GLSlider;->mGaugeMarker:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setTint(I)V

    .line 767
    :cond_1
    return-void
.end method

.method protected translateStepByOrdering(I)I
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 871
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mOrder:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 874
    .end local p1    # "step":I
    :goto_0
    return p1

    .restart local p1    # "step":I
    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLSlider;->mNumOfStep:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    goto :goto_0
.end method

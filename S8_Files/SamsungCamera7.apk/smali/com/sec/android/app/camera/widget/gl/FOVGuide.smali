.class public Lcom/sec/android/app/camera/widget/gl/FOVGuide;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "FOVGuide.java"


# static fields
.field private static final GUIDE_COLOR:I


# instance fields
.field private mBottomRect:Lcom/samsung/android/glview/GLRectangle;

.field private mLeftRect:Lcom/samsung/android/glview/GLRectangle;

.field private mRightRect:Lcom/samsung/android/glview/GLRectangle;

.field private mTopRect:Lcom/samsung/android/glview/GLRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->GUIDE_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFF)V
    .locals 9
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    .line 43
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v6, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->GUIDE_COLOR:I

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mLeftRect:Lcom/samsung/android/glview/GLRectangle;

    .line 44
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v6, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->GUIDE_COLOR:I

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mTopRect:Lcom/samsung/android/glview/GLRectangle;

    .line 45
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v6, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->GUIDE_COLOR:I

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mRightRect:Lcom/samsung/android/glview/GLRectangle;

    .line 46
    new-instance v0, Lcom/samsung/android/glview/GLRectangle;

    sget v6, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->GUIDE_COLOR:I

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLRectangle;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mBottomRect:Lcom/samsung/android/glview/GLRectangle;

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mLeftRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mTopRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mRightRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mBottomRect:Lcom/samsung/android/glview/GLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 51
    return-void
.end method


# virtual methods
.method public setGuideRect(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "guideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mLeftRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->getHeight()F

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mTopRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mRightRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->getWidth()F

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->getHeight()F

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->mBottomRect:Lcom/samsung/android/glview/GLRectangle;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/FOVGuide;->getHeight()F

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLRectangle;->setRect(FFFF)V

    .line 58
    return-void
.end method

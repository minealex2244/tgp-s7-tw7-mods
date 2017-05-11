.class public Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;
.super Lcom/samsung/android/glview/GLView;
.source "ObjectTrackingView.java"


# instance fields
.field private mRect:Lcom/samsung/android/glview/GLNinePatch;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;I)V
    .locals 2
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "resId"    # I

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 31
    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V

    .line 42
    return-void
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected onDraw()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    .line 82
    :cond_0
    return-void
.end method

.method protected onLayoutUpdated()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    .line 90
    :cond_0
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x1

    .line 96
    .local v0, "loaded":Z
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    .line 99
    :cond_0
    return v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    .line 106
    :cond_0
    return-void
.end method

.method public setRect(FFFF)V
    .locals 2
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 49
    cmpl-float v0, p3, v1

    if-lez v0, :cond_2

    cmpl-float v0, p4, v1

    if-lez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_2

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicWidth()I

    move-result v0

    int-to-float p3, v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->getIntrinsicHeight()I

    move-result v0

    int-to-float p4, v0

    .line 56
    :cond_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->setSize(FF)V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->translateAbsolute(FF)V

    .line 59
    :cond_2
    return-void
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    .line 67
    :cond_0
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->setTint(I)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ObjectTrackingView;->mRect:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setTint(I)V

    .line 75
    :cond_0
    return-void
.end method

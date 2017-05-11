.class public Lcom/sec/android/app/camera/widget/gl/TimerIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "TimerIndicator.java"


# static fields
.field private static final TIMER_BOUNDARY:I = 0x3


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 4
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 33
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f02023f

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 34
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020240

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 35
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f02023e

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public setTimerStatus(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v4, 0x3

    .line 43
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 50
    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/TimerIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0
.end method

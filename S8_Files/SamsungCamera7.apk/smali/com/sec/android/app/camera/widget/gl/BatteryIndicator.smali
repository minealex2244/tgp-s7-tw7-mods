.class public Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;
.super Lcom/samsung/android/glview/GLViewGroup;
.source "BatteryIndicator.java"


# static fields
.field public static final CHARGING:I = 0x2

.field public static final LEVEL_0_TO_4:I = 0x0

.field public static final LEVEL_5_TO_15:I = 0x1

.field public static final LEVEL_INVISIBLE:I = 0x3

.field public static final MAX_LEVEL:I = 0x2


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FF)V
    .locals 5
    .param p1, "glContext"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    .line 33
    iput v4, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I

    .line 38
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020276

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 39
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020277

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 40
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    const v2, 0x7f020278

    invoke-direct {v1, p1, v3, v3, v2}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->addView(Lcom/samsung/android/glview/GLView;)V

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 48
    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    .line 49
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 51
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v0    # "i":I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLView;->setVisibility(IZ)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setVisibility(I)V

    .line 59
    iput p1, p0, Lcom/sec/android/app/camera/widget/gl/BatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_2
    :goto_1
    return-void

    .line 60
    :catch_0
    move-exception v1

    goto :goto_1
.end method

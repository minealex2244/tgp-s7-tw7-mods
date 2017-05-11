.class public Lcom/sec/android/app/camera/provider/CameraGestureManager;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;
    }
.end annotation


# static fields
.field public static final SCROLL_THRESHOLD_DISTANCE:F

.field public static final SWIPE_DIRECTION_DOWN:I = 0x3

.field public static final SWIPE_DIRECTION_LEFT:I = 0x1

.field public static final SWIPE_DIRECTION_RIGHT:I = 0x0

.field public static final SWIPE_DIRECTION_UNKNOWN:I = -0x1

.field public static final SWIPE_DIRECTION_UP:I = 0x2

.field public static final SWIPE_IGNORE_AREA_LANDSCAPE:F

.field public static final SWIPE_IGNORE_AREA_PORTRAIT:F

.field public static final SWIPE_THRESHOLD_DISTANCE:F

.field public static final SWIPE_THRESHOLD_VELOCITY:F

.field public static final SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

.field private static mLastDirection:I


# instance fields
.field private SCROLL_LIMITATION_TIME:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollEventTime:J

.field private mSwipeEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0a03ad

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    .line 44
    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    .line 48
    const v0, 0x7f0a0212

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY:F

    .line 52
    const v0, 0x7f0a0213

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    .line 56
    const v0, 0x7f0a03ac

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_PORTRAIT:F

    .line 60
    const v0, 0x7f0a03ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    .line 84
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mLastDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    .line 92
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_LIMITATION_TIME:I

    .line 93
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    .line 94
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/provider/CameraGestureManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraGestureManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/provider/CameraGestureManager;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/provider/CameraGestureManager;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method public static getLastDirection()I
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mLastDirection:I

    return v0
.end method

.method private static setLastDirection(I)V
    .locals 0
    .param p0, "direction"    # I

    .prologue
    .line 117
    sput p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mLastDirection:I

    .line 118
    return-void
.end method


# virtual methods
.method public disableSwipeEvent()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    .line 123
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 127
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    .line 128
    .local v0, "orientation":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    if-ne v0, v4, :cond_2

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_PORTRAIT:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_IGNORE_AREA_PORTRAIT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 133
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    .line 134
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    .line 139
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 136
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_LIMITATION_TIME:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 145
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    .line 147
    iget-boolean v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    .line 148
    const/4 v4, 0x0

    .line 254
    :cond_0
    :goto_0
    return v4

    .line 151
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 152
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 156
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 159
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 162
    const/4 v4, 0x0

    goto :goto_0

    .line 171
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    .line 172
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    .line 174
    .local v1, "deltaY":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    .line 175
    .local v6, "orientation":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    .line 176
    .local v3, "fixedOrientation":Z
    const/4 v2, -0x1

    .line 178
    .local v2, "direction":I
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_7

    if-nez v3, :cond_f

    .line 179
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    .line 180
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 182
    const/4 v4, 0x0

    goto :goto_0

    .line 185
    :cond_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 186
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_a

    .line 187
    const/4 v2, 0x0

    .line 240
    :cond_9
    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->setLastDirection(I)V

    .line 242
    const/4 v7, -0x1

    if-eq v2, v7, :cond_17

    .line 243
    iget-object v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 244
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    const/4 v4, 0x0

    .line 245
    .local v4, "handled":Z
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 246
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;->onFlingDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    .line 188
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_a
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .line 189
    const/4 v2, 0x1

    goto :goto_1

    .line 192
    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    .line 193
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 195
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 198
    :cond_c
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 199
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_d

    .line 200
    const/4 v2, 0x3

    goto :goto_1

    .line 201
    :cond_d
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    .line 202
    const/4 v2, 0x2

    goto :goto_1

    .line 206
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 209
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    .line 210
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 212
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 215
    :cond_10
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 216
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_11

    .line 217
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 218
    :cond_11
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .line 219
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 222
    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    .line 223
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    .line 225
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 228
    :cond_13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 229
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_14

    .line 230
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 231
    :cond_14
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    .line 232
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 236
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 248
    .restart local v4    # "handled":Z
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_16
    if-eqz v4, :cond_0

    .line 249
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    .line 254
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 259
    iget-boolean v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    .line 261
    const/4 v4, 0x0

    .line 366
    :cond_0
    :goto_0
    return v4

    .line 264
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 267
    const/4 v4, 0x0

    goto :goto_0

    .line 270
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 271
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    .line 277
    const/4 v4, 0x0

    goto :goto_0

    .line 280
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 281
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 284
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_8

    .line 287
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    .line 288
    const/4 v4, 0x0

    goto :goto_0

    .line 291
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    .line 292
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    .line 294
    .local v1, "deltaY":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    .line 295
    .local v6, "orientation":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    .line 296
    .local v3, "fixedOrientation":Z
    const/4 v2, -0x1

    .line 298
    .local v2, "direction":I
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_9

    if-nez v3, :cond_11

    .line 299
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 300
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 302
    const/4 v4, 0x0

    goto :goto_0

    .line 305
    :cond_a
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_c

    .line 306
    const/4 v2, 0x0

    .line 352
    :cond_b
    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/provider/CameraGestureManager;->setLastDirection(I)V

    .line 354
    const/4 v7, -0x1

    if-eq v2, v7, :cond_19

    .line 355
    iget-object v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 356
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    const/4 v4, 0x0

    .line 357
    .local v4, "handled":Z
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 358
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;->onScrollDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    .line 307
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_c
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    .line 308
    const/4 v2, 0x1

    goto :goto_1

    .line 310
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 311
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    .line 313
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 316
    :cond_e
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_f

    .line 317
    const/4 v2, 0x3

    goto :goto_1

    .line 318
    :cond_f
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    .line 319
    const/4 v2, 0x2

    goto :goto_1

    .line 322
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 325
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    .line 326
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    .line 328
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 331
    :cond_12
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_13

    .line 332
    const/4 v2, 0x3

    goto :goto_1

    .line 333
    :cond_13
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    .line 334
    const/4 v2, 0x2

    goto :goto_1

    .line 336
    :cond_14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_17

    .line 337
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 339
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 342
    :cond_15
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_16

    .line 343
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 344
    :cond_16
    sget v7, Lcom/sec/android/app/camera/provider/CameraGestureManager;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    .line 345
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 348
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 360
    .restart local v4    # "handled":Z
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_18
    if-eqz v4, :cond_0

    .line 361
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    .line 366
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;>;"
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mScrollEventTime:J

    .line 373
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 380
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public unregisterGestureEventListener(Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/provider/CameraGestureManager$GestureEventListener;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraGestureManager;->mGestureListenerLists:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    return-void
.end method

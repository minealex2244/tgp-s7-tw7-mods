.class public Lcom/sec/android/app/camera/util/CameraGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;,
        Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;
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


# instance fields
.field private SCROLL_LIMITATION_TIME:I

.field private mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

.field private mFlingListenerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDirection:I

.field private mScrollEventTime:J

.field private mSwipeEventEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0b035c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    .line 43
    const v0, 0x7f0b0344

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    .line 48
    const v0, 0x7f0b020a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    .line 53
    const v0, 0x7f0b020b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    .line 58
    const v0, 0x7f0b035b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    .line 63
    const v0, 0x7f0b035a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    .line 103
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_LIMITATION_TIME:I

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    .line 111
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 115
    return-void
.end method

.method public disableSwipeEvent()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    .line 119
    return-void
.end method

.method public getLastDirection()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;->onDoubleTap(FF)Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 152
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    .line 153
    .local v0, "orientation":I
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_LANDSCAPE:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_1
    if-ne v0, v4, :cond_2

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_IGNORE_AREA_PORTRAIT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 158
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    .line 159
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 165
    :goto_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 161
    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_LIMITATION_TIME:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 171
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 173
    iget-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    .line 174
    const/4 v4, 0x0

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 178
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 182
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 185
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 188
    const/4 v4, 0x0

    goto :goto_0

    .line 197
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    .line 198
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    .line 200
    .local v1, "deltaY":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    .line 201
    .local v6, "orientation":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    .line 202
    .local v3, "fixedOrientation":Z
    const/4 v2, -0x1

    .line 204
    .local v2, "direction":I
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_7

    if-nez v3, :cond_f

    .line 205
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    .line 206
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_8

    .line 208
    const/4 v4, 0x0

    goto :goto_0

    .line 211
    :cond_8
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 212
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_a

    .line 213
    const/4 v2, 0x0

    .line 267
    :cond_9
    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    .line 269
    const/4 v7, -0x1

    if-eq v2, v7, :cond_17

    .line 270
    iget-object v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 271
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    const/4 v4, 0x0

    .line 272
    .local v4, "handled":Z
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 273
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;->onFlingDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    .line 214
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_a
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .line 215
    const/4 v2, 0x1

    goto :goto_1

    .line 218
    :cond_b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_e

    .line 219
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 221
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 224
    :cond_c
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 225
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_d

    .line 226
    const/4 v2, 0x3

    goto :goto_1

    .line 227
    :cond_d
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    .line 228
    const/4 v2, 0x2

    goto :goto_1

    .line 233
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 236
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 239
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 242
    :cond_10
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 243
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_11

    .line 244
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 245
    :cond_11
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .line 246
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 249
    :cond_12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_15

    .line 250
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_13

    .line 252
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 255
    :cond_13
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_VELOCITY_PORTRAIT:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_9

    .line 256
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_14

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 258
    :cond_14
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SWIPE_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_9

    .line 259
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 263
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 275
    .restart local v4    # "handled":Z
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_16
    if-eqz v4, :cond_0

    .line 276
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    .line 281
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
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
    .line 286
    iget-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    if-nez v7, :cond_1

    .line 288
    const/4 v4, 0x0

    .line 394
    :cond_0
    :goto_0
    return v4

    .line 291
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 294
    const/4 v4, 0x0

    goto :goto_0

    .line 297
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_4

    .line 298
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    .line 304
    const/4 v4, 0x0

    goto :goto_0

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    .line 308
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 311
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-eq v7, v8, :cond_8

    .line 314
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 315
    const/4 v4, 0x0

    goto :goto_0

    .line 318
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    sub-float v0, v7, v8

    .line 319
    .local v0, "deltaX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float v1, v7, v8

    .line 321
    .local v1, "deltaY":F
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v6

    .line 322
    .local v6, "orientation":I
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->isFixedOrientation()Z

    move-result v3

    .line 323
    .local v3, "fixedOrientation":Z
    const/4 v2, -0x1

    .line 325
    .local v2, "direction":I
    rem-int/lit8 v7, v6, 0x2

    if-eqz v7, :cond_9

    if-nez v3, :cond_11

    .line 326
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_d

    .line 327
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_a

    .line 329
    const/4 v4, 0x0

    goto :goto_0

    .line 332
    :cond_a
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_c

    .line 333
    const/4 v2, 0x0

    .line 380
    :cond_b
    :goto_1
    iput v2, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mLastDirection:I

    .line 382
    const/4 v7, -0x1

    if-eq v2, v7, :cond_19

    .line 383
    iget-object v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 384
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    const/4 v4, 0x0

    .line 385
    .local v4, "handled":Z
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 386
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    invoke-interface {v7, v2, v6}, Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;->onScrollDirection(II)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_2

    .line 334
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_c
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    .line 335
    const/4 v2, 0x1

    goto :goto_1

    .line 337
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_10

    .line 338
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_e

    .line 340
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 343
    :cond_e
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_f

    .line 344
    const/4 v2, 0x3

    goto :goto_1

    .line 345
    :cond_f
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    .line 346
    const/4 v2, 0x2

    goto :goto_1

    .line 350
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 353
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_14

    .line 354
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    .line 356
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 359
    :cond_12
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_13

    .line 360
    const/4 v2, 0x3

    goto :goto_1

    .line 361
    :cond_13
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_b

    .line 362
    const/4 v2, 0x2

    goto :goto_1

    .line 364
    :cond_14
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_17

    .line 365
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_15

    .line 367
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 370
    :cond_15
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    cmpl-float v7, v1, v7

    if-lez v7, :cond_16

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 372
    :cond_16
    sget v7, Lcom/sec/android/app/camera/util/CameraGestureListener;->SCROLL_THRESHOLD_DISTANCE:F

    neg-float v7, v7

    cmpg-float v7, v1, v7

    if-gez v7, :cond_b

    .line 373
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 376
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 388
    .restart local v4    # "handled":Z
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_18
    if-eqz v4, :cond_0

    .line 389
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mSwipeEventEnabled:Z

    goto/16 :goto_0

    .line 394
    .end local v4    # "handled":Z
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;>;"
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 400
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mScrollEventTime:J

    .line 401
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public registerFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public setDoubleTapEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mDoubleTapListener:Lcom/sec/android/app/camera/util/CameraGestureListener$DoubleTapEventListener;

    .line 410
    return-void
.end method

.method public unregisterFlingEventListener(Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/android/app/camera/util/CameraGestureListener$FlingEventListener;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/util/CameraGestureListener;->mFlingListenerLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

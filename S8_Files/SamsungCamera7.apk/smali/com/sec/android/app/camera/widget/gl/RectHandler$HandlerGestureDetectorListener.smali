.class public Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/widget/gl/RectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/widget/gl/RectHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/RectHandler;

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1233
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1238
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mDisable:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$200(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$100(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$OnHandlerMoveListener;->onLongPressed()V

    .line 1251
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mBoundRectImage:Lcom/samsung/android/glview/GLRectangle;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$000(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/samsung/android/glview/GLRectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLRectangle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/RectHandler$HandlerGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/widget/gl/RectHandler;

    # getter for: Lcom/sec/android/app/camera/widget/gl/RectHandler;->mRectHandlerClickListener:Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler;->access$300(Lcom/sec/android/app/camera/widget/gl/RectHandler;)Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/widget/gl/RectHandler$RectHandlerClickListener;->onRectHandlerClick()V

    .line 1263
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.class Lcom/sec/android/app/camera/Camera$12;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/Camera;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 717
    const-string v1, "Camera6"

    const-string v2, "return, baseLayout is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    :goto_0
    return v3

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    # setter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowWidth:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1302(Lcom/sec/android/app/camera/Camera;I)I

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    # setter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowHeight:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1402(Lcom/sec/android/app/camera/Camera;I)I

    .line 723
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getDisplayRotation()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v2

    # setter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1202(Lcom/sec/android/app/camera/Camera;I)I

    .line 725
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLastWindowOrientation:I
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mCurrentWindowOrientation:I
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1200(Lcom/sec/android/app/camera/Camera;)I

    move-result v2

    # setter for: Lcom/sec/android/app/camera/Camera;->mLastWindowOrientation:I
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Camera;->access$1502(Lcom/sec/android/app/camera/Camera;I)I

    .line 729
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLayoutChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mLayoutChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 732
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$12;->this$0:Lcom/sec/android/app/camera/Camera;

    # getter for: Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 733
    .local v0, "baseLayoutViewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.class Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;
.super Ljava/lang/Object;
.source "ItemDataButton.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$TouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Lcom/samsung/android/glview/GLView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->access$600(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    # getter for: Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->mTouchListener:Lcom/samsung/android/glview/GLView$TouchListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/ItemDataButton;->access$700(Lcom/sec/android/app/camera/widget/gl/ItemDataButton;)Lcom/samsung/android/glview/GLView$TouchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/ItemDataButton$4;->this$0:Lcom/sec/android/app/camera/widget/gl/ItemDataButton;

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/glview/GLView$TouchListener;->onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/sec/android/app/camera/menu/BaseMenu$5;
.super Landroid/os/Handler;
.source "BaseMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BaseMenu;->onShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BaseMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BaseMenu;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/BaseMenu;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$5;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1366
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1368
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$5;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # invokes: Lcom/sec/android/app/camera/menu/BaseMenu;->handleOneHandZoomMessage()V
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$200(Lcom/sec/android/app/camera/menu/BaseMenu;)V

    .line 1370
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$5;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->mIsOneHandZoomShowing:Z
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$300(Lcom/sec/android/app/camera/menu/BaseMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1372
    .local v0, "message":Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1373
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BaseMenu$5;->this$0:Lcom/sec/android/app/camera/menu/BaseMenu;

    # getter for: Lcom/sec/android/app/camera/menu/BaseMenu;->mOneHandZoomAnimationHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/camera/menu/BaseMenu;->access$400(Lcom/sec/android/app/camera/menu/BaseMenu;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1366
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

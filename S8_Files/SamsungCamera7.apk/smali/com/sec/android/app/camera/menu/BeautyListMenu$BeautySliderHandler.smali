.class Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;
.super Landroid/os/Handler;
.source "BeautyListMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BeautySliderHandler"
.end annotation


# instance fields
.field private final mBeautySlider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/menu/BeautyListMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 1
    .param p1, "beautySlider"    # Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .prologue
    .line 787
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 788
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;->mBeautySlider:Ljava/lang/ref/WeakReference;

    .line 789
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$BeautySliderHandler;->mBeautySlider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;

    .line 794
    .local v0, "beautySlider":Lcom/sec/android/app/camera/menu/BeautyListMenu;
    if-nez v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 799
    :pswitch_0
    # invokes: Lcom/sec/android/app/camera/menu/BeautyListMenu;->stopSliderMenuTimer()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$1000(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    .line 800
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->hideMenu()V

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

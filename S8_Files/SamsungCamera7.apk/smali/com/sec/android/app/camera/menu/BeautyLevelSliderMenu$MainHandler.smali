.class Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$MainHandler;
.super Landroid/os/Handler;
.source "BeautyLevelSliderMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainHandler"
.end annotation


# instance fields
.field private mSlider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;)V
    .locals 1
    .param p1, "slider"    # Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$MainHandler;->mSlider:Ljava/lang/ref/WeakReference;

    .line 240
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$MainHandler;->mSlider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    .line 245
    .local v0, "slider":Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;
    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->stopSliderMenuTimer()V

    .line 251
    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->hideMenu()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;
.super Landroid/os/Handler;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 729
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 728
    :goto_0
    return-void

    .line 731
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-wrap2(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;[F)V

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

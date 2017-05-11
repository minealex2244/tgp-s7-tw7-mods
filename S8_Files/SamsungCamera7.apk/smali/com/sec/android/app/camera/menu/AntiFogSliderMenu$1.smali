.class Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "AntiFogSliderMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 95
    :goto_1
    return-void

    .line 88
    :pswitch_0
    const-string v2, "camera.action.ACTION_ANTI_FOG_UI_UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    # invokes: Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->refreshSlider()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->access$000(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V

    goto :goto_1

    .line 88
    :pswitch_data_0
    .packed-switch -0x2d950aac
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

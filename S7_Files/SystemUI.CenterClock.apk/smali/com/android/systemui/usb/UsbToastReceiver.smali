.class public Lcom/android/systemui/usb/UsbToastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbToastReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "action":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/systemui/usb/UsbToastReceiver;->mContext:Landroid/content/Context;

    .line 33
    const-string/jumbo v1, "com.samsung.intent.action.SDCARD_ITPOLICY_TOAST_EVENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    const-string/jumbo v1, "UsbToastReceiver"

    const-string/jumbo v2, "onReceive!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/android/systemui/usb/UsbToastReceiver;->mContext:Landroid/content/Context;

    const v2, 0x1040a86

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 30
    :cond_0
    return-void
.end method

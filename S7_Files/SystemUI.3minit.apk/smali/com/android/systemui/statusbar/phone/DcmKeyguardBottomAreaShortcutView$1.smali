.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;
.super Landroid/os/Handler;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-get6(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v0

    .line 129
    const v1, 0x7f0f0690

    .line 128
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x12cc
        :pswitch_0
    .end packed-switch
.end method

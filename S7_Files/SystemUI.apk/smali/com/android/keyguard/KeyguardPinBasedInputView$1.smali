.class Lcom/android/keyguard/KeyguardPinBasedInputView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardPinBasedInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPinBasedInputView;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 394
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->-get0(Lcom/android/keyguard/KeyguardPinBasedInputView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    .line 396
    .local v0, "newMobileKeyboardCovered":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->-get1(Lcom/android/keyguard/KeyguardPinBasedInputView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->-set0(Lcom/android/keyguard/KeyguardPinBasedInputView;I)I

    .line 398
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$1;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->-wrap1(Lcom/android/keyguard/KeyguardPinBasedInputView;)V

    .line 393
    .end local v0    # "newMobileKeyboardCovered":I
    :cond_0
    return-void
.end method

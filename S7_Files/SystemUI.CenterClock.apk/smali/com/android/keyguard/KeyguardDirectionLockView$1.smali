.class Lcom/android/keyguard/KeyguardDirectionLockView$1;
.super Ljava/lang/Object;
.source "KeyguardDirectionLockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-get6(Lcom/android/keyguard/KeyguardDirectionLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap9(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$1;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap4(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 219
    return-void
.end method

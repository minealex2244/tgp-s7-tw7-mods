.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;
.super Ljava/lang/Object;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;
    .param p2, "val$event"    # Lcom/samsung/android/fingerprint/FingerprintEvent;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 464
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    .line 463
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 470
    :sswitch_1
    if-eqz p0, :cond_0

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    .line 476
    :sswitch_2
    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    .line 477
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Fingerprint Recognition Success! Start screen lock type"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 479
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "identifyFingerprint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(ILandroid/content/Intent;)V

    .line 481
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    .line 482
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v4, :cond_0

    .line 483
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 484
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Sensor Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f0b0673

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap2(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    .line 501
    :cond_2
    :goto_1
    if-eqz p0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    .line 503
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    .line 486
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_4

    .line 487
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Service Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v2, 0x7f0b0676

    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap2(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V

    goto :goto_1

    .line 489
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_5

    .line 490
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "Database Failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;)V

    .line 496
    const-wide/16 v4, 0xc8

    .line 491
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 497
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_2

    .line 498
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    iget-object v1, v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    .line 499
    return-void

    .line 464
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method
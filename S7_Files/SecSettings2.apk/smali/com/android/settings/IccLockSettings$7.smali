.class Lcom/android/settings/IccLockSettings$7;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get5(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 592
    .local v0, "IccLockState":Z
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get8(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 593
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get7(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get8(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$7;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get7(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0b07fe

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 589
    :cond_0
    return-void
.end method

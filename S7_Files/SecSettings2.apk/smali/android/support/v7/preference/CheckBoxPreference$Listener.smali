.class Landroid/support/v7/preference/CheckBoxPreference$Listener;
.super Ljava/lang/Object;
.source "CheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/CheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/CheckBoxPreference;


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/preference/CheckBoxPreference$Listener;->this$0:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Landroid/support/v7/preference/CheckBoxPreference$Listener;->this$0:Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    .line 43
    return-void
.end method

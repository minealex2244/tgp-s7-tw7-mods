.class Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ProfileSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;

.field final synthetic val$profileSpinnerAdapter:Lcom/android/settingslib/drawer/UserAdapter;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;Lcom/android/settingslib/drawer/UserAdapter;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;
    .param p2, "val$profileSpinnerAdapter"    # Lcom/android/settingslib/drawer/UserAdapter;
    .param p3, "val$spinner"    # Landroid/widget/Spinner;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settingslib/drawer/UserAdapter;

    iput-object p3, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settingslib/drawer/UserAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settingslib/drawer/UserAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 59
    .local v1, "selectedUser":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getIntentActionString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v2, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 65
    iget-object v2, p0, Lcom/android/settings/utils/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 57
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

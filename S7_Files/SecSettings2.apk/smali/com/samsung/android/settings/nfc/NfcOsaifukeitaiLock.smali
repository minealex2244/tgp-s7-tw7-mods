.class public Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;
.super Landroid/app/Fragment;
.source "NfcOsaifukeitaiLock.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final CSC_SALES_CODE:Ljava/lang/String;

.field private final OMC_SALES_CODE:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private activitySwitchBar:Lcom/android/settings/SettingsActivity;

.field private final carrier:Ljava/lang/String;

.field private mFelicaLockResultCode:I

.field private mIntent:Landroid/content/Intent;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field public mbSwitchBar:Z

.field private myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    .line 65
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    .line 53
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getLockState()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public getSwitchBarState()Z
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] getSwitchBarState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mbSwitchBar:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 97
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[E] onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 219
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NfcOsaifukeitaiLock onActivityResult ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput p2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    .line 221
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 217
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "[S] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activitySwitchBar:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 113
    const v2, 0x7f0a00d1

    .line 112
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    .local v0, "padding":I
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v3, v3, v0, v3}, Lcom/android/settings/widget/SwitchBar;->setPaddingRelative(IIII)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    .line 120
    const v4, 0x800015

    .line 117
    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b1b7a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 124
    .end local v0    # "padding":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->carrier:Ljava/lang/String;

    const-string/jumbo v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 127
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.felicalock"

    const-string/jumbo v3, "com.samsung.felicalock.FelicaLockActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "[E] onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 124
    :cond_1
    const-string/jumbo v2, "KDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 131
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockKDI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 124
    :cond_2
    const-string/jumbo v2, "SBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 134
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    .line 135
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockSBM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 138
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    const-class v3, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLockDCM;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    const v0, 0x7f04019d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    const v1, 0x7f1104c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 206
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] removeOnSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[S] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->onPause(Landroid/content/Context;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 200
    :cond_1
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "[E] onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 159
    const-string/jumbo v0, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v1, "NfcOsaifukeitaiLock onResume & registerReceiver"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    if-nez v0, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->onResume(Landroid/content/Context;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getLockState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b1b96

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->myNfcOsaifukeitaiLock:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->getSwitchBarState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 157
    :cond_1
    return-void

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b1b95

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 154
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "desiredState"    # Z

    .prologue
    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 229
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NfcOsaifukeitaiLock onSwitchChanged mFelicaLockResultCode=( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mFelicaLockResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string/jumbo v1, "[NfcOsaifukeitaiLock]"

    const-string/jumbo v2, "NFC_Lock_switch call FeliCaLock:S"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiLock;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
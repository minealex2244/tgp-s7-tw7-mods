.class public Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
.super Landroid/preference/PreferenceFragment;
.source "QuickLaunchSettingFragment.java"

# interfaces
.implements Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;


# static fields
.field public static final KEY_HOME_BUTTON:Ljava/lang/String; = "home_button"

.field public static final KEY_POWER_BUTTON:Ljava/lang/String; = "power_button"

.field private static final TAG:Ljava/lang/String; = "QuickLaunchSettingFragment"


# instance fields
.field private QuickCameraObserver:Landroid/database/ContentObserver;

.field private mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

.field private mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

.field private mQuickCameraDisableDialog:Landroid/app/AlertDialog;

.field private mSwitchBar:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 53
    new-instance v0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->QuickCameraObserver:Landroid/database/ContentObserver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->handleSwitchBarClickEvent(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->dismissAllDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateSwitchBar()V

    return-void
.end method

.method private darkScreenTurnOffPopup()V
    .locals 9

    .prologue
    const v8, 0x7f09015b

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->dismissAllDialog()V

    .line 192
    const v2, 0x7f09026c

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "popup_title":Ljava/lang/String;
    const v2, 0x7f09026b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "popup_msg":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f09026d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$6;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090129

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$5;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    .line 211
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 219
    return-void
.end method

.method private dismissAllDialog()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mQuickCameraDisableDialog:Landroid/app/AlertDialog;

    .line 226
    :cond_0
    return-void
.end method

.method private getQuickLaunch()I
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleSwitchBarClickEvent(Z)V
    .locals 8
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 233
    const-string v3, "QuickLaunchSettingFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSwitchBarClickEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const v4, 0x7f0f000e

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, "switchBarText":Landroid/widget/TextView;
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 239
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I

    move-result v1

    .line 241
    .local v1, "oldQuickLaunchValue":I
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v1, v7, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->darkScreenTurnOffPopup()V

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 236
    .end local v1    # "oldQuickLaunchValue":I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 245
    .restart local v1    # "oldQuickLaunchValue":I
    :cond_2
    if-nez v1, :cond_3

    .line 246
    const/4 v0, 0x1

    .line 254
    .local v0, "newQuickLaunchValue":I
    :goto_2
    if-eq v1, v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "double_tab_launch"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 247
    .end local v0    # "newQuickLaunchValue":I
    :cond_3
    if-ne v1, v6, :cond_4

    .line 248
    const/4 v0, 0x0

    .restart local v0    # "newQuickLaunchValue":I
    goto :goto_2

    .line 249
    .end local v0    # "newQuickLaunchValue":I
    :cond_4
    if-ne v1, v7, :cond_5

    .line 250
    const/4 v0, 0x3

    .restart local v0    # "newQuickLaunchValue":I
    goto :goto_2

    .line 252
    .end local v0    # "newQuickLaunchValue":I
    :cond_5
    const/4 v0, 0x2

    .restart local v0    # "newQuickLaunchValue":I
    goto :goto_2
.end method

.method public static newInstance()Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    .locals 2

    .prologue
    .line 81
    new-instance v1, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;-><init>()V

    .line 82
    .local v1, "fragment":Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 84
    return-object v1
.end method

.method private setActionBarTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 267
    .local v0, "mActionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method

.method private updateRadioButtons(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    const-string v0, "power_button"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setChecked(Z)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    const-string v0, "home_button"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateSwitchBar()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 281
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    move v0, v3

    .line 283
    .local v0, "quickLaunchOn":Z
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const v5, 0x7f0f000f

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 284
    .local v2, "switchButton":Landroid/widget/Switch;
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 286
    iget-object v4, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const v5, 0x7f0f000e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 287
    .local v1, "switchBarText":Landroid/widget/TextView;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 289
    return-void

    .line 281
    .end local v0    # "quickLaunchOn":Z
    .end local v1    # "switchBarText":Landroid/widget/TextView;
    .end local v2    # "switchButton":Landroid/widget/Switch;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    .restart local v0    # "quickLaunchOn":Z
    .restart local v1    # "switchBarText":Landroid/widget/TextView;
    .restart local v2    # "switchButton":Landroid/widget/Switch;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    .line 93
    .local v0, "activity":Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getSwitchBar()Landroid/widget/RelativeLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const v3, 0x7f0f000f

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 96
    .local v1, "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$2;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Landroid/widget/Switch;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v2, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$3;-><init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->setActionBarTitle(Ljava/lang/String;)V

    .line 116
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->addPreferencesFromResource(I)V

    .line 118
    const-string v0, "power_button"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    .line 119
    const-string v0, "home_button"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setOnClickListener(Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setOnClickListener(Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference$OnClickListener;)V

    .line 122
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f000f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 130
    .local v0, "mSwitchView":Landroid/widget/Switch;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 133
    .end local v0    # "mSwitchView":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->QuickCameraObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->QuickCameraObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "power_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->darkScreenTurnOffPopup()V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tab_launch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 163
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I

    move-result v1

    .line 164
    .local v1, "quickLaunchValue":I
    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_4

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    .local v0, "doubleTabCheck":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mSwitchBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateSwitchBar()V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setEnabled(Z)V

    .line 171
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setEnabled(Z)V

    .line 173
    if-eq v1, v5, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 174
    :cond_2
    const-string v2, "power_button"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V

    .line 178
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->QuickCameraObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tab_launch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->QuickCameraObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 181
    :cond_3
    return-void

    .end local v0    # "doubleTabCheck":Ljava/lang/Boolean;
    :cond_4
    move v2, v3

    .line 164
    goto :goto_0

    .line 176
    .restart local v0    # "doubleTabCheck":Ljava/lang/Boolean;
    :cond_5
    const-string v2, "home_button"

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->dismissAllDialog()V

    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 187
    return-void
.end method

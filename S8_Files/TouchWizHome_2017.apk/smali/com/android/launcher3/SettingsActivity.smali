.class public Lcom/android/launcher3/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
    }
.end annotation


# static fields
.field public static final BADGE_MANAGER_FRAGMENT:I = 0x1

.field public static final SETTINGS_FRAGMENT:I = 0x0

.field public static TAG:Ljava/lang/String; = null

.field private static final VISIBLE_FRAGMENT:Ljava/lang/String; = "visible_fragment"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

.field private mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

.field private mVisibleFragment:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "SettingsActivity"

    sput-object v0, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 55
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 56
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .line 57
    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method private startSettingApp()V
    .locals 5

    .prologue
    .line 584
    sget-object v2, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    const-string v3, "launch Setting App"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, "settingApp":Landroid/content/Intent;
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getSettingCN()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    const/high16 v2, 0x10020000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 592
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 597
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/launcher3/util/GlobalSettingUtils;->setBackToSetting(Z)V

    .line 598
    return-void

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public enableAllAppsBadge(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 167
    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->enableAllAppsbadge(Z)V

    goto :goto_0
.end method

.method public enableSingleAppBadge(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    .line 175
    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-nez v1, :cond_1

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->enableAppBadge(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    if-nez v0, :cond_1

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 111
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity;->startSettingApp()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->startDatabaseLoader()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 66
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    :cond_0
    const v1, 0x7f03003b

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0f00c2

    .line 73
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0f00c3

    .line 75
    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    .line 76
    if-eqz p1, :cond_3

    .line 77
    const-string v1, "visible_fragment"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 78
    .local v0, "visibleFragment":I
    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    .line 88
    .end local v0    # "visibleFragment":I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    .line 89
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherAppState;->setSettingsActivity(Lcom/android/launcher3/SettingsActivity;)V

    .line 92
    return-void

    .line 80
    .restart local v0    # "visibleFragment":I
    :cond_2
    if-ne v0, v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showBadgeManagerSettings()V

    goto :goto_0

    .line 84
    .end local v0    # "visibleFragment":I
    :cond_3
    sget-object v1, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate: showHomeScreenSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->showSettingsFragment()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->onBackPressed()V

    .line 125
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const-string v0, "visible_fragment"

    iget v1, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public showBadgeManagerSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 155
    sget-object v3, Lcom/android/launcher3/SettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showBadgeManagerSettings: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput v2, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/BadgeSettingsFragment;->updateList()V

    .line 158
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 159
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 161
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 163
    const v1, 0x7f08001a

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setTitle(I)V

    .line 164
    return-void

    .line 155
    .end local v0    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showSettingsFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    iput v2, p0, Lcom/android/launcher3/SettingsActivity;->mVisibleFragment:I

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 138
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher3/common/model/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mLauncherSettingsFragment:Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 142
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 146
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->getStartSetting()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f08003a

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity;->setTitle(I)V

    .line 152
    return-void

    .line 150
    :cond_2
    const v1, 0x7f080045

    goto :goto_0
.end method

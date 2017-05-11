.class public Lcom/android/launcher3/home/HomeModeChangeActivity;
.super Landroid/app/Activity;
.source "HomeModeChangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.android.launcher.action.CHANGE_HOMEONLYMODE"

.field public static final EXTRA_HOMEONLYEMODE:Ljava/lang/String; = "homeOnlyeMode"

.field public static final PERMISSION_CHANGE_HOMEONLYMODE:Ljava/lang/String; = "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/TextView;

.field private mAppsRadio:Landroid/widget/RadioButton;

.field private mEnabledHomeOnly:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHomeOnlyRadio:Landroid/widget/RadioButton;

.field private mNeedInit:Z

.field private mPreview:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/launcher3/home/HomeModeChangeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    .line 184
    new-instance v0, Lcom/android/launcher3/home/HomeModeChangeActivity$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$1;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeModeChangeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeModeChangeActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setHomeScreenMode()V

    return-void
.end method

.method private askConfirmation()V
    .locals 3

    .prologue
    const v2, 0x7f08003d

    const/4 v1, 0x0

    .line 201
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const v0, 0x7f08003f

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    .line 210
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->showModeChangeDialog(IZ)V

    goto :goto_0
.end method

.method private checkNeedInit()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeApps;->CONTENT_URI:Landroid/net/Uri;

    .line 141
    .local v1, "contentUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 145
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mNeedInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_1
    return-void

    .line 138
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 149
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 156
    .local v1, "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 157
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 158
    const v2, 0x7f03001f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 159
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    const v2, 0x7f0f0058

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 165
    .local v0, "headerBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v0    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    .line 124
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    .line 125
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    .line 126
    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    .line 127
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 132
    :goto_0
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private preformOnClick(Z)V
    .locals 4
    .param p1, "homeOnlyMode"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 217
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08018b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080123

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080122

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setHomeScreenMode()V
    .locals 8

    .prologue
    .line 264
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "isHomeOnlyMode":Z
    iget-object v4, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHomeOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    const/4 v2, 0x1

    .line 269
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "extras":Landroid/os/Bundle;
    const-string v4, "value"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "set_boolean_setting"

    const-string v7, "pref_home_screen_mode"

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 274
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08018b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0800dc

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2

    const-string v4, "2"

    .line 274
    :goto_0
    invoke-virtual {v5, v6, v7, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    .line 279
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0801af

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_3

    const-string v4, "2"

    .line 278
    :goto_1
    invoke-virtual {v5, v6, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v3

    .line 282
    .local v3, "settingActivity":Landroid/app/Activity;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 283
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$5;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity$5;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    invoke-static {}, Lcom/android/launcher3/util/GlobalSettingUtils;->resetSettingsValue()V

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    .line 294
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "isHomeOnlyMode":Z
    .end local v3    # "settingActivity":Landroid/app/Activity;
    :cond_1
    return-void

    .line 276
    .restart local v0    # "extras":Landroid/os/Bundle;
    .restart local v2    # "isHomeOnlyMode":Z
    :cond_2
    const-string v4, "1"

    goto :goto_0

    .line 279
    :cond_3
    const-string v4, "1"

    goto :goto_1
.end method

.method private showModeChangeDialog(IZ)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "needNeutralButton"    # Z

    .prologue
    .line 225
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08000a

    new-instance v4, Lcom/android/launcher3/home/HomeModeChangeActivity$2;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity$2;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    if-eqz p2, :cond_0

    .line 239
    const v2, 0x7f080022

    new-instance v3, Lcom/android/launcher3/home/HomeModeChangeActivity$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$3;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    :cond_0
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 248
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 249
    .local v0, "alert":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/launcher3/home/HomeModeChangeActivity$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeModeChangeActivity$4;-><init>(Lcom/android/launcher3/home/HomeModeChangeActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    iget-boolean v2, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    .line 257
    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 260
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 261
    return-void

    .line 256
    :cond_1
    const/16 v2, 0xf

    goto :goto_0
.end method

.method private updatePreviewAndHelpText(Z)V
    .locals 4
    .param p1, "isHomeOnly"    # Z

    .prologue
    const/4 v3, 0x0

    .line 171
    if-eqz p1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c0

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :goto_1
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bf

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mAppsRadio:Landroid/widget/RadioButton;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 119
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->askConfirmation()V

    goto :goto_0

    .line 108
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 111
    :sswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0013 -> :sswitch_0
        0x7f0f0059 -> :sswitch_1
        0x7f0f0082 -> :sswitch_2
        0x7f0f0084 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    sget-object v1, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->setContentView(I)V

    .line 77
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    .line 78
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initViews()V

    .line 79
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->checkNeedInit()V

    .line 80
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->initActionBar()V

    .line 81
    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mEnabledHomeOnly:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/HomeModeChangeActivity;->updatePreviewAndHelpText(Z)V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.launcher.action.CHANGE_HOMEONLYMODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "com.samsung.android.launcher.permission.CHANGE_HOMEONLYMODE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/launcher3/home/HomeModeChangeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/launcher3/home/HomeModeChangeActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/home/HomeModeChangeActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HomeModeChangeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

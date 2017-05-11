.class public Lcom/android/settings/ConfirmLockPassword;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I

.field private static mAppLock_isPin:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mPersonalPage_isPin:Z


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Lcom/android/settings/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/ConfirmLockPassword;->DETAIL_TEXTS:[I

    .line 111
    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    .line 112
    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    .line 113
    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    .line 114
    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    .line 97
    return-void

    .line 100
    nop

    :array_0
    .array-data 4
        0x7f0b087f
        0x7f0b0880
        0x7f0b14b8
        0x7f0b14b9
        0x7f0b14bb
        0x7f0b14bc
        0x7f0b14be
        0x7f0b14bf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 122
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1104a1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 137
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 138
    check-cast v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    .line 134
    :cond_0
    return-void
.end method
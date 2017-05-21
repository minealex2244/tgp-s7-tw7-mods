.class public Lcom/sec/android/app/camera/help/ChangeModeActivity;
.super Landroid/app/Activity;
.source "ChangeModeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7f0a017e

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/ChangeModeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/ChangeModeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 50
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/help/ChangeModeActivity;->setTitle(I)V

    .line 51
    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/help/ChangeModeActivity;->setContentView(I)V

    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 32
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/app/camera/help/ChangeModeActivity;->finish()V

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

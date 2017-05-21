.class public Lcom/android/launcher3/home/AddItemOnNewPageDialog;
.super Landroid/app/DialogFragment;
.source "AddItemOnNewPageDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static positiveRunnable:Ljava/lang/Runnable; = null

.field private static final sFragmentTag:Ljava/lang/String; = "AddItemOnNewPageDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "noMoreRoomRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    sput-object p1, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->positiveRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/android/launcher3/home/AddItemOnNewPageDialog;

    invoke-direct {v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;-><init>()V

    .line 36
    .local v0, "dialog":Lcom/android/launcher3/home/AddItemOnNewPageDialog;
    const-string v1, "AddItemOnNewPageDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static dismiss(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 56
    const-string v1, "AddItemOnNewPageDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 57
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 60
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 63
    const-string v0, "AddItemOnNewPageDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 41
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 42
    sget-object v0, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->positiveRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080075

    .line 49
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080069

    .line 50
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08001d

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    .local v0, "dialog":Landroid/app/Dialog;
    return-object v0
.end method

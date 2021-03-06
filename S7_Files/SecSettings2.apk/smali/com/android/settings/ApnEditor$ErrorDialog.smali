.class public Lcom/android/settings/ApnEditor$ErrorDialog;
.super Landroid/app/DialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# static fields
.field private static id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2103
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/ApnEditor;)V
    .locals 3
    .param p0, "editor"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 2113
    new-instance v0, Lcom/android/settings/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/ApnEditor$ErrorDialog;-><init>()V

    .line 2114
    .local v0, "dialog":Lcom/android/settings/ApnEditor$ErrorDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2115
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2112
    return-void
.end method

.method public static showError(Lcom/android/settings/ApnEditor;I)V
    .locals 0
    .param p0, "editor"    # Lcom/android/settings/ApnEditor;
    .param p1, "dialogId"    # I

    .prologue
    .line 2107
    sput p1, Lcom/android/settings/ApnEditor$ErrorDialog;->id:I

    .line 2108
    invoke-static {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->showError(Lcom/android/settings/ApnEditor;)V

    .line 2106
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b0acb

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 2120
    sget v1, Lcom/android/settings/ApnEditor$ErrorDialog;->id:I

    if-nez v1, :cond_0

    .line 2121
    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ApnEditor;

    invoke-static {v1}, Lcom/android/settings/ApnEditor;->-wrap1(Lcom/android/settings/ApnEditor;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2124
    const v2, 0x7f0b1437

    .line 2123
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2128
    new-instance v2, Lcom/android/settings/ApnEditor$ErrorDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnEditor$ErrorDialog$1;-><init>(Lcom/android/settings/ApnEditor$ErrorDialog;)V

    const v3, 0x7f0b0871

    .line 2123
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2137
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    sget v1, Lcom/android/settings/ApnEditor$ErrorDialog;->id:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2138
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2139
    const v2, 0x7f0b123a

    .line 2138
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2145
    :cond_1
    sget v1, Lcom/android/settings/ApnEditor$ErrorDialog;->id:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_2

    .line 2146
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 2151
    :cond_2
    return-object v3
.end method

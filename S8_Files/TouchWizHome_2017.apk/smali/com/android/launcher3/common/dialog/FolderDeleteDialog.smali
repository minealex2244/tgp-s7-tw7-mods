.class public Lcom/android/launcher3/common/dialog/FolderDeleteDialog;
.super Landroid/app/DialogFragment;
.source "FolderDeleteDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "FolderDeleteDialog"


# instance fields
.field private mController:Lcom/android/launcher3/common/stage/Stage;

.field private mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 54
    const-string v1, "FolderDeleteDialog"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 55
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 57
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 59
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 50
    const-string v0, "FolderDeleteDialog"

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
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 92
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 94
    const-string v0, "FolderDeleteDialog"

    const-string v1, "Activity is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mController:Lcom/android/launcher3/common/stage/Stage;

    check-cast v0, Lcom/android/launcher3/common/base/controller/ControllerBase;

    iget-object v1, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/common/base/controller/ControllerBase;->deleteFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 67
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 68
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 87
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 76
    const v3, 0x7f080080

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "remove_folder_alert":Ljava/lang/String;
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08007e

    .line 83
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08001d

    .line 84
    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 87
    .local v0, "dialog":Landroid/app/Dialog;
    goto :goto_0

    .line 78
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "remove_folder_alert":Ljava/lang/String;
    :cond_2
    const v3, 0x7f08007f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "remove_folder_alert":Ljava/lang/String;
    goto :goto_1
.end method

.method public show(Landroid/app/FragmentManager;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "controller"    # Lcom/android/launcher3/common/stage/Stage;
    .param p3, "folderInfo"    # Lcom/android/launcher3/folder/FolderInfo;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mFolderInfo:Lcom/android/launcher3/folder/FolderInfo;

    .line 45
    iput-object p2, p0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->mController:Lcom/android/launcher3/common/stage/Stage;

    .line 46
    const-string v0, "FolderDeleteDialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

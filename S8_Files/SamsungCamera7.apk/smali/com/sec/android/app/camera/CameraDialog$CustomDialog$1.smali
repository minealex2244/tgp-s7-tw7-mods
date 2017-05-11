.class Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;
.super Ljava/lang/Object;
.source "CameraDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1137
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$600()Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1138
    :try_start_0
    # getter for: Lcom/sec/android/app/camera/CameraDialog;->mListeners:Ljava/util/List;
    invoke-static {}, Lcom/sec/android/app/camera/CameraDialog;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;

    .line 1139
    .local v0, "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mDialogID:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$700(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;->onNegativeButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    .line 1141
    .end local v0    # "listener":Lcom/sec/android/app/camera/interfaces/CameraContext$CameraDialogListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;->this$1:Lcom/sec/android/app/camera/CameraDialog$CustomDialog;

    # getter for: Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->access$800(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1145
    :cond_1
    return-void
.end method

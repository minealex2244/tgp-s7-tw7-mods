.class Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;
.super Landroid/content/BroadcastReceiver;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/folderlock/FolderLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplockStateChangedRecevier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/folder/folderlock/FolderLock;
    .param p2, "x1"    # Lcom/android/launcher3/folder/folderlock/FolderLock$1;

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 931
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 933
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 934
    .local v2, "value":Z
    const-string v3, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applock enabled value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    # getter for: Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z
    invoke-static {v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$500(Lcom/android/launcher3/folder/folderlock/FolderLock;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 936
    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    # setter for: Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z
    invoke-static {v3, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$502(Lcom/android/launcher3/folder/folderlock/FolderLock;Z)Z

    .line 937
    const-string v3, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFolderLockEnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    # getter for: Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z
    invoke-static {v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$500(Lcom/android/launcher3/folder/folderlock/FolderLock;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    # getter for: Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;
    invoke-static {v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->access$600(Lcom/android/launcher3/folder/folderlock/FolderLock;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    .line 939
    .local v1, "folder":Lcom/android/launcher3/folder/FolderInfo;
    invoke-virtual {v1, v6}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    goto :goto_0

    .line 942
    .end local v1    # "folder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;->this$0:Lcom/android/launcher3/folder/folderlock/FolderLock;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    .line 944
    .end local v2    # "value":Z
    :cond_1
    return-void
.end method

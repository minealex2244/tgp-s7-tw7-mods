.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 130
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v5, "result":Landroid/os/Bundle;
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET_CLIENT_INFO, c: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isSupportBackup(Landroid/content/Context;)Z

    move-result v3

    .line 133
    .local v3, "isSupportBackup":Z
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->isEnableBackup(Landroid/content/Context;)Z

    move-result v1

    .line 134
    .local v1, "isEnableBackup":Z
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET_CLIENT_INFO, s: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->isFirstBackup(Ljava/lang/String;)Z

    move-result v2

    .line 136
    .local v2, "isFirstBackup":Z
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "label":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "description":Ljava/lang/String;
    const-string v6, "support_backup"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    const-string v6, "name"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v6, "contents_id"

    iget-object v7, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v6, "is_enable_backup"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    const-string v6, "is_first_backup"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 143
    const-string v6, "label"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v6, "description"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v6, "category"

    iget-object v7, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;
    invoke-static {v7}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET_CLIENT_INFO, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-object v5
.end method
.class Lcom/android/server/enterprise/security/SecurityPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/security/SecurityPolicy;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 241
    .local v2, "userId":I
    :try_start_0
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    const-string/jumbo v3, "edm.intent.action.ACTION_EDM_BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 241
    if-nez v3, :cond_0

    .line 243
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 241
    if-eqz v3, :cond_2

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->-set0(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    .line 247
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->-get0(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isPersonaId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    return-void

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    if-nez v2, :cond_2

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, "Saving Device safe mode to true in generic table"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->-wrap1(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->-wrap0(Lcom/android/server/enterprise/security/SecurityPolicy;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, "Sending broadcast: edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.LAST_BOOT_SAFE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 266
    const-string/jumbo v3, "SecurityPolicy"

    const-string/jumbo v4, "Sending broadcast: com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$1;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/enterprise/security/SecurityPolicy;->-wrap1(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

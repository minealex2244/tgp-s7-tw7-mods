.class Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;
.super Ljava/lang/Thread;
.source "EnterpriseSharedDevicePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyThread"
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

.field userCredentials:Lcom/samsung/android/knox/shareddevice/UserCredentials;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;Landroid/content/Context;Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userCredentials"    # Lcom/samsung/android/knox/shareddevice/UserCredentials;

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->this$0:Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1301
    const-class v0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->CLASS_NAME:Ljava/lang/String;

    .line 1306
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->context:Landroid/content/Context;

    .line 1307
    iput-object p3, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->userCredentials:Lcom/samsung/android/knox/shareddevice/UserCredentials;

    .line 1305
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v2, "Thread running!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->userCredentials:Lcom/samsung/android/knox/shareddevice/UserCredentials;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->notifyUserSignedIn(Lcom/samsung/android/knox/shareddevice/UserCredentials;)V
    :try_end_0
    .catch Lcom/android/server/enterprise/shareddevice/SharedDeviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :goto_0
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/EnterpriseSharedDevicePolicy$NotifyThread;->CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;
.super Ljava/lang/Object;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimaISLCallback"
.end annotation


# instance fields
.field subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    .line 1123
    return-void
.end method


# virtual methods
.method public onTimaViolation(Ljava/lang/String;)V
    .locals 5
    .param p1, "violation"    # Ljava/lang/String;

    .prologue
    .line 1128
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1130
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get1()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1131
    .local v0, "adminId":I
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap3(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;I)Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    if-eqz v3, :cond_0

    .line 1133
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$TimaISLCallback;->subscriber:Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;

    invoke-interface {v3, p1}, Lcom/sec/enterprise/knox/IIntegrityResultSubscriber;->onTimaViolation(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1127
    .end local v0    # "adminId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

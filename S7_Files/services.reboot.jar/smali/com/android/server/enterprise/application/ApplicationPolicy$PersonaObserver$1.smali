.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->onStateChange(Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

.field final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;Lcom/samsung/android/knox/SemPersonaState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
    .param p2, "val$newState"    # Lcom/samsung/android/knox/SemPersonaState;

    .prologue
    .line 6014
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 6018
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6019
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6016
    :cond_0
    :goto_0
    return-void

    .line 6020
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 6022
    .local v3, "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "adminLuid$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 6023
    .local v0, "adminLuid":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    .line 6024
    .local v4, "adminUid":I
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v6

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 6025
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap17(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_1

    .line 6029
    .end local v0    # "adminLuid":J
    .end local v2    # "adminLuid$iterator":Ljava/util/Iterator;
    .end local v3    # "adminLuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v4    # "adminUid":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v7, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6031
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get7(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    .line 6032
    .local v5, "observer":Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
    if-eqz v5, :cond_0

    .line 6033
    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->unregisterPersonaObserverReceiver()V

    .line 6034
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get7(Lcom/android/server/enterprise/application/ApplicationPolicy;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;->this$1:Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->-get0(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.class final Lcom/android/server/SdpManagerService$ListenerRoll;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListenerRoll"
.end annotation


# instance fields
.field private final mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 2710
    iput-object p1, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2711
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    .line 2710
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$ListenerRoll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SdpManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$ListenerRoll;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method


# virtual methods
.method disenroll(Lcom/android/server/SdpManagerService$StateListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/server/SdpManagerService$StateListener;

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method enroll(Lcom/android/server/SdpManagerService$StateListener;)Z
    .locals 1
    .param p1, "dbListener"    # Lcom/android/server/SdpManagerService$StateListener;

    .prologue
    .line 2714
    iget-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method get()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$StateListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/android/server/SdpManagerService$ListenerRoll;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
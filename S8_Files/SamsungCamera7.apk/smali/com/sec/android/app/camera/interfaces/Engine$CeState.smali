.class public final enum Lcom/sec/android/app/camera/interfaces/Engine$CeState;
.super Ljava/lang/Enum;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/interfaces/Engine$CeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum INITIALIZED:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum INITIALIZING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

.field public static final enum STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1369
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1373
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->INITIALIZING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1377
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->INITIALIZED:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1381
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "STARTING_PREVIEW"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1385
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "PREVIEWING"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1389
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "RECORDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1393
    new-instance v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    const-string v1, "SHUTDOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    .line 1365
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->IDLE:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->INITIALIZING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->INITIALIZED:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Engine$CeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1365
    const-class v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/Engine$CeState;
    .locals 1

    .prologue
    .line 1365
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->$VALUES:[Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/Engine$CeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    return-object v0
.end method

.class public final enum Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;
.super Ljava/lang/Enum;
.source "FaceAreaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/FaceAreaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaceSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

.field public static final enum BIG:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

.field public static final enum NOT_FACE:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

.field public static final enum SMALL:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 631
    new-instance v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    const-string v1, "NOT_FACE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->NOT_FACE:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    .line 635
    new-instance v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->BIG:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    .line 639
    new-instance v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->SMALL:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    .line 626
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    sget-object v1, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->NOT_FACE:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->BIG:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->SMALL:Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->$VALUES:[Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

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
    .line 626
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 626
    const-class v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;
    .locals 1

    .prologue
    .line 626
    sget-object v0, Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->$VALUES:[Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/util/FaceAreaManager$FaceSize;

    return-object v0
.end method
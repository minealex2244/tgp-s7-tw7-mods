.class public final enum Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
.super Ljava/lang/Enum;
.source "PopupLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/PopupLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopupID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

.field public static final enum EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

.field public static final enum VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

.field public static final enum VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    const-string v1, "VIDEO_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .line 126
    new-instance v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    const-string v1, "VISION_INTELLIGENCE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .line 127
    new-instance v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    const-string v1, "EXPERIENCE_GUIDE_AUTO_FOCUS"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VIDEO_PREVIEW:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->$VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->$VALUES:[Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-virtual {v0}, [Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    return-object v0
.end method

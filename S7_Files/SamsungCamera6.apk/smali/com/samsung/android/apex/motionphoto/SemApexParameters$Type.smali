.class final enum Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
.super Ljava/lang/Enum;
.source "SemApexParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/SemApexParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

.field public static final enum ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 119
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 123
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "BOOLEAN"

    const-string v2, "vbln"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 127
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "INT"

    const-string v2, "vint"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 131
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "LONG"

    const-string v2, "vlng"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 135
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "FLOAT"

    const-string v2, "vflt"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 139
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "STRING"

    const/4 v2, 0x5

    const-string v3, "vstr"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 143
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "INTARRAY"

    const/4 v2, 0x6

    const-string v3, "aint"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 147
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "LONGARRAY"

    const/4 v2, 0x7

    const-string v3, "alng"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 151
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "ULONGARRAY"

    const/16 v2, 0x8

    const-string v3, "auln"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 155
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    const-string v1, "STRINGARRAY"

    const/16 v2, 0x9

    const-string v3, "astr"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->ULONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p3, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 167
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    shl-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    .line 168
    iget v1, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 5
    .param p0, "val"    # I

    .prologue
    .line 182
    invoke-static {}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->values()[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 183
    .local v0, "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    iget v4, v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    if-ne p0, v4, :cond_0

    .line 187
    .end local v0    # "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    :goto_1
    return-object v0

    .line 182
    .restart local v0    # "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    :cond_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->NONE:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->$VALUES:[Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->val:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

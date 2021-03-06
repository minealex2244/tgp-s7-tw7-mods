.class public Lcom/samsung/android/apex/motionphoto/SemApexParameters;
.super Ljava/lang/Object;
.source "SemApexParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    }
.end annotation


# static fields
.field public static final KEY_BUFFERING_MODE:Ljava/lang/String; = "buffering-mode"

.field public static final KEY_EFFECT_MODE:Ljava/lang/String; = "effect-mode"

.field public static final KEY_FPS_FACTOR:Ljava/lang/String; = "fps-factor"

.field public static final KEY_FPS_RANGE:Ljava/lang/String; = "fps-range"

.field public static final KEY_FRAME_RATE:Ljava/lang/String; = "frame-rate"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_METADATA_STORED:Ljava/lang/String; = "metadatastored"

.field public static final KEY_PREVIEW_FORMAT:Ljava/lang/String; = "preview-format"

.field public static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field public static final KEY_SAVE_AS_FLIPPED:Ljava/lang/String; = "save-as-flipped"

.field public static final KEY_USE_INTRINSIC_TIMESTAMP:Ljava/lang/String; = "use-intrinsic-timestamp"

.field public static final KEY_VIDEO_FORMAT:Ljava/lang/String; = "video-format"

.field public static final KEY_VIDEO_SIZE:Ljava/lang/String; = "video-size"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->unflatten(Ljava/lang/String;)V

    .line 191
    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "flattened":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "k":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 202
    .local v5, "val":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 210
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_1
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 212
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_1
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 213
    check-cast v5, Ljava/lang/Integer;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 215
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 216
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 218
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_4

    .line 219
    check-cast v5, Ljava/lang/Float;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_4
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 222
    check-cast v5, Ljava/lang/String;

    .end local v5    # "val":Ljava/lang/Object;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 224
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_5
    instance-of v6, v5, [I

    if-eqz v6, :cond_7

    .line 225
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    check-cast v5, [I

    .end local v5    # "val":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, [I

    .line 227
    .local v4, "list":[I
    array-length v9, v4

    move v6, v7

    :goto_2
    if-ge v6, v9, :cond_6

    aget v2, v4, v6

    .line 228
    .local v2, "i":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 230
    .end local v2    # "i":I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 231
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "]@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v9, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 232
    .end local v4    # "list":[I
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_7
    instance-of v6, v5, [J

    if-eqz v6, :cond_9

    .line 233
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    check-cast v5, [J

    .end local v5    # "val":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, [J

    .line 235
    .local v4, "list":[J
    array-length v9, v4

    move v6, v7

    :goto_3
    if-ge v6, v9, :cond_8

    aget-wide v2, v4, v6

    .line 236
    .local v2, "i":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 238
    .end local v2    # "i":J
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "]@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 239
    .end local v4    # "list":[J
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_9
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 240
    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    check-cast v5, [Ljava/lang/String;

    .end local v5    # "val":Ljava/lang/Object;
    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 242
    .local v4, "list":[Ljava/lang/String;
    array-length v9, v4

    move v6, v7

    :goto_4
    if-ge v6, v9, :cond_a

    aget-object v2, v4, v6

    .line 243
    .local v2, "i":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 245
    .end local v2    # "i":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "]@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 247
    .end local v4    # "list":[Ljava/lang/String;
    .restart local v5    # "val":Ljava/lang/Object;
    :cond_b
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown type[key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 253
    .end local v1    # "k":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/Object;
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;*>;"
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 329
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 14
    .param p1, "flattened"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v10, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 265
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v10, 0x3b

    invoke-direct {v6, v10}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 266
    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, p1}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 267
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 268
    .local v3, "kv":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "eqPos":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_0

    .line 272
    const/4 v11, 0x0

    invoke-virtual {v3, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "k":Ljava/lang/String;
    const-string v11, "@"

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 275
    .local v8, "tpPos":I
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->valueOf(I)Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    move-result-object v7

    .line 277
    .local v7, "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    const/4 v9, 0x0

    .line 278
    .local v9, "val":Ljava/lang/Object;
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->BOOLEAN:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_1

    .line 279
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 308
    .end local v9    # "val":Ljava/lang/Object;
    :goto_1
    iget-object v11, p0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v11, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    .restart local v9    # "val":Ljava/lang/Object;
    :cond_1
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_2

    .line 281
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "val":Ljava/lang/Integer;
    goto :goto_1

    .line 282
    .local v9, "val":Ljava/lang/Object;
    :cond_2
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONG:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_3

    .line 283
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .local v9, "val":Ljava/lang/Long;
    goto :goto_1

    .line 284
    .local v9, "val":Ljava/lang/Object;
    :cond_3
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->FLOAT:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_4

    .line 285
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .local v9, "val":Ljava/lang/Float;
    goto :goto_1

    .line 286
    .local v9, "val":Ljava/lang/Object;
    :cond_4
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRING:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_5

    .line 287
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, "val":Ljava/lang/String;
    goto :goto_1

    .line 288
    .local v9, "val":Ljava/lang/Object;
    :cond_5
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->INTARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_7

    .line 289
    add-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "list":[Ljava/lang/String;
    array-length v11, v5

    new-array v4, v11, [I

    .line 291
    .local v4, "l":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v11, v5

    if-ge v1, v11, :cond_6

    .line 292
    aget-object v11, v5, v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v4, v1

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 294
    :cond_6
    move-object v9, v4

    .line 295
    .local v9, "val":[I
    goto :goto_1

    .end local v1    # "i":I
    .end local v4    # "l":[I
    .end local v5    # "list":[Ljava/lang/String;
    .local v9, "val":Ljava/lang/Object;
    :cond_7
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->LONGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_9

    .line 296
    add-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 297
    .restart local v5    # "list":[Ljava/lang/String;
    array-length v11, v5

    new-array v4, v11, [J

    .line 298
    .local v4, "l":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v11, v5

    if-ge v1, v11, :cond_8

    .line 299
    aget-object v11, v5, v1

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v4, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 301
    :cond_8
    move-object v9, v4

    .line 302
    .local v9, "val":[J
    goto/16 :goto_1

    .end local v1    # "i":I
    .end local v4    # "l":[J
    .end local v5    # "list":[Ljava/lang/String;
    .local v9, "val":Ljava/lang/Object;
    :cond_9
    sget-object v11, Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;->STRINGARRAY:Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;

    if-ne v7, v11, :cond_a

    .line 303
    add-int/lit8 v11, v0, 0x2

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "val":[Ljava/lang/String;
    goto/16 :goto_1

    .line 305
    .local v9, "val":Ljava/lang/Object;
    :cond_a
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 310
    .end local v0    # "eqPos":I
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "kv":Ljava/lang/String;
    .end local v7    # "t":Lcom/samsung/android/apex/motionphoto/SemApexParameters$Type;
    .end local v8    # "tpPos":I
    .end local v9    # "val":Ljava/lang/Object;
    :cond_b
    return-void
.end method

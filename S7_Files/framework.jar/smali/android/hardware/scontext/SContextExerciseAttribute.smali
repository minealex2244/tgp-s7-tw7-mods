.class public Landroid/hardware/scontext/SContextExerciseAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextExerciseAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 34
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 36
    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    .line 28
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 38
    new-array v0, v2, [I

    .line 39
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 38
    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 46
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 45
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "requiredDataType"    # [I

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 38
    new-array v0, v2, [I

    .line 39
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 38
    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 66
    iput-object p1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method private setAttribute()V
    .locals 7

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v5, "Required data type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "required_data":I
    if-eqz v1, :cond_0

    .line 98
    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_0
    iget-object v5, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    .line 116
    :goto_1
    or-int/2addr v3, v2

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :pswitch_0
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 103
    const-string/jumbo v5, "GPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 106
    :pswitch_1
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 107
    const-string/jumbo v5, "Barometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 110
    :pswitch_2
    sget v2, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    .line 111
    const-string/jumbo v5, "Pedometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 118
    .end local v2    # "required_data":I
    :cond_1
    const-string/jumbo v5, "SContextExerciseAttribute"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v5, "required_data_type"

    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const/16 v5, 0x28

    invoke-super {p0, v5, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 91
    return-void

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 75
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    if-lt v3, v6, :cond_0

    .line 76
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 77
    :cond_0
    const-string/jumbo v3, "SContextExerciseAttribute"

    const-string/jumbo v4, "The required data type is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v5

    .line 80
    :cond_1
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 82
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 83
    const-string/jumbo v3, "SContextExerciseAttribute"

    const-string/jumbo v4, "This required data type cannot have duplicated type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v5

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "j":I
    :cond_4
    return v6
.end method

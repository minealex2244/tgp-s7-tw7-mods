.class public Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
.super Ljava/lang/Object;
.source "SemApexStoreData.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field id:J

.field private path:Ljava/lang/String;

.field private rotation:I

.field private timestamp:J

.field private token:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "token"    # I
    .param p4, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 38
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 39
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 42
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;J)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "token"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "timestamp"    # J

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 46
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 47
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 48
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 50
    return-void
.end method

.method public constructor <init>(JILjava/lang/String;JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "token"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "timestamp"    # J
    .param p7, "rotation"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 54
    iput p3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 55
    iput-object p4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 56
    iput-wide p5, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 57
    iput p7, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->unflatten(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static createFrom(Landroid/os/Bundle;)Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;
    .locals 12
    .param p0, "b"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v0, "id"

    const-wide/16 v10, -0x1

    invoke-virtual {p0, v0, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 66
    .local v2, "id":J
    const-string v0, "token"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 67
    .local v4, "token":I
    const-string v0, "path"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "path":Ljava/lang/String;
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 69
    .local v6, "timestamp":J
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 70
    .local v8, "rotation":I
    new-instance v1, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;JI)V

    return-object v1
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>()V

    .line 85
    .local v0, "p":Lcom/samsung/android/apex/motionphoto/SemApexParameters;
    const-string v1, "id"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v1, "token"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v1, "rotation"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->flatten()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    return-wide v0
.end method

.method public getToken()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    return v0
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 108
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 124
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 120
    return-void
.end method

.method public setToken(I)V
    .locals 0
    .param p1, "token"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 116
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "id"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 76
    const-string v1, "token"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v1, "path"

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string v1, "rotation"

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 144
    const-string v0, "id=%d, token=%d, timestamp=%d, path=%s, rotation=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lcom/samsung/android/apex/motionphoto/SemApexParameters;

    invoke-direct {v0, p1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "p":Lcom/samsung/android/apex/motionphoto/SemApexParameters;
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->id:J

    .line 96
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->token:I

    .line 97
    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->path:Ljava/lang/String;

    .line 98
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->timestamp:J

    .line 99
    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Lcom/samsung/android/apex/motionphoto/SemApexParameters;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->rotation:I

    .line 100
    return-void
.end method

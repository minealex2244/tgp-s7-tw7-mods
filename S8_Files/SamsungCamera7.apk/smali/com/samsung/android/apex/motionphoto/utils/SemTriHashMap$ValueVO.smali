.class Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;
.super Ljava/lang/Object;
.source "SemTriHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueVO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV2;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO<TV1;TV2;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v1:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v2:Ljava/lang/Object;

    .line 72
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;, "Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO<TV1;TV2;>;"
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v1:Ljava/lang/Object;

    .line 77
    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/utils/SemTriHashMap$ValueVO;->v2:Ljava/lang/Object;

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void
.end method

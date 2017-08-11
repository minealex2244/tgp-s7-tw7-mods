.class public Lcom/sec/android/app/camera/engine/CommonEngine$CeSemCameraParameter;
.super Ljava/lang/Object;
.source "CommonEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/CommonEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CeSemCameraParameter"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 9883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9884
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSemCameraParameter;->mKey:Ljava/lang/String;

    .line 9885
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSemCameraParameter;->mValue:Ljava/lang/String;

    .line 9886
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9889
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSemCameraParameter;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9893
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/CommonEngine$CeSemCameraParameter;->mValue:Ljava/lang/String;

    return-object v0
.end method

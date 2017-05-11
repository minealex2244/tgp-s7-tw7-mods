.class public final Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
.super Ljava/lang/Object;
.source "PathRuleInfo.java"


# instance fields
.field private apps:[Ljava/lang/String;

.field private intent:Ljava/lang/String;

.field private isRoot:Z

.field private pathRuleId:Ljava/lang/String;

.field private pathRuleName:Ljava/lang/String;

.field private sampleUtterance:Ljava/lang/String;

.field private utterance:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pathRuleId"    # Ljava/lang/String;
    .param p2, "pathRuleName"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "utterance"    # Ljava/lang/String;
    .param p5, "sampleUtterance"    # Ljava/lang/String;
    .param p6, "apps"    # [Ljava/lang/String;
    .param p7, "isRoot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    .line 29
    iput-boolean p7, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getApps()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->apps:[Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathRuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->pathRuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSampleUtterance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->sampleUtterance:Ljava/lang/String;

    return-object v0
.end method

.method public getUtterance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->utterance:Ljava/lang/String;

    return-object v0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;->isRoot:Z

    return v0
.end method

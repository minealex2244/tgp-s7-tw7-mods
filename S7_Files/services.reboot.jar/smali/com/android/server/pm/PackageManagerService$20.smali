.class Lcom/android/server/pm/PackageManagerService$20;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->resetUserChangesToRuntimePermissionsAndFlagsLPw(Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$appId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$appId"    # I
    .param p3, "val$userId"    # I

    .prologue
    .line 21977
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$20;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$20;->val$appId:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$20;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21980
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$20;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$20;->val$appId:I

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$20;->val$userId:I

    const-string/jumbo v3, "permissions revoked"

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap34(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 21979
    return-void
.end method

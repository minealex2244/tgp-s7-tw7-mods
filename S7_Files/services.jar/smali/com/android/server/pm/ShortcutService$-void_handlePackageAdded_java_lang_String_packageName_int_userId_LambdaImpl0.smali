.class final synthetic Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/ShortcutService$-void_handlePackageAdded_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    check-cast p1, Lcom/android/server/pm/ShortcutUser;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$13(Ljava/lang/String;ILcom/android/server/pm/ShortcutUser;)V

    return-void
.end method

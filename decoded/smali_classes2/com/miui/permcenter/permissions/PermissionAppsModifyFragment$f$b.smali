.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lak/p<",
        "Llk/i0;",
        "Ltj/d<",
        "-",
        "Loj/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.permcenter.permissions.PermissionAppsModifyFragment$progressRecoverIsolate$1$2"
    f = "PermissionAppsModifyActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lmiuix/appcompat/app/ProgressDialog;

.field final synthetic c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/ProgressDialog;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ZLtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/appcompat/app/ProgressDialog;",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;",
            "Z",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->b:Lmiuix/appcompat/app/ProgressDialog;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iput-boolean p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->b:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iget-boolean v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->d:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;-><init>(Lmiuix/appcompat/app/ProgressDialog;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ZLtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->b:Lmiuix/appcompat/app/ProgressDialog;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->b:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->p0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/app/AppOpsManager;

    move-result-object p1

    const/16 v0, 0x273f

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->d:Z

    invoke-static {p1, v0, v1, v2, v3}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User has set {"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->K0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->v0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "} isolate state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;->d:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileSandboxManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->W0(Z)V
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
    c = "com.miui.permcenter.permissions.PermissionAppsModifyFragment$progressRecoverIsolate$1"
    f = "PermissionAppsModifyActivity.kt"
    i = {}
    l = {
        0x171,
        0x17a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Z

.field final synthetic c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

.field final synthetic d:Lmiuix/appcompat/app/ProgressDialog;


# direct methods
.method constructor <init>(ZLcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lmiuix/appcompat/app/ProgressDialog;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;",
            "Lmiuix/appcompat/app/ProgressDialog;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->b:Z

    iput-object p2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->d:Lmiuix/appcompat/app/ProgressDialog;

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

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->b:Z

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iget-object v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->d:Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;-><init>(ZLcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lmiuix/appcompat/app/ProgressDialog;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$a;

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->d:Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v1, v5, v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$a;-><init>(Lmiuix/appcompat/app/ProgressDialog;Ltj/d;)V

    iput v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->a:I

    invoke-static {p1, v1, p0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->b:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {v1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->q0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    invoke-static {p1, v1, v5, v4}, Lcom/miui/permcenter/q;->e(Ljava/lang/String;IZZ)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progressRecoverIsolate open: false , result file count: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FileSandboxManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object p1

    new-instance v1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;

    iget-object v4, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->d:Lmiuix/appcompat/app/ProgressDialog;

    iget-object v5, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iget-boolean v6, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->b:Z

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f$b;-><init>(Lmiuix/appcompat/app/ProgressDialog;Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;ZLtj/d;)V

    iput v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$f;->a:I

    invoke-static {p1, v1, p0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

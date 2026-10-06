.class final Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
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
    c = "com.miui.permcenter.permissions.PermissionAppsModifyFragment$onCreatePreferences$3"
    f = "PermissionAppsModifyActivity.kt"
    i = {}
    l = {
        0xc6,
        0xc8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 1
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

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;-><init>(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    iget v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->a:Ljava/lang/Object;

    check-cast v1, Lcom/miui/permcenter/permissions/PermTipsPreference;

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->s0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;)Lcom/miui/permcenter/permissions/PermTipsPreference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->a:Ljava/lang/Object;

    iput v3, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->b:I

    invoke-static {v1, p1, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->A0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Lcom/miui/permcenter/permissions/PermTipsPreference;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->c:Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment$d;->b:I

    invoke-static {p1, p0}, Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;->C0(Lcom/miui/permcenter/permissions/PermissionAppsModifyFragment;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

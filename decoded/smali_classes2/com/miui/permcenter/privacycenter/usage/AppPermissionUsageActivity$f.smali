.class final Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.miui.permcenter.privacycenter.usage.AppPermissionUsageActivity$onCreate$8"
    f = "AppPermissionUsageActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;",
            "Ltj/d<",
            "-",
            "Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

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

    new-instance p1, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;

    iget-object v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    invoke-direct {p1, v0, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;-><init>(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ltj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    iget v0, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->a:I

    if-nez v0, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity$f;->b:Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;

    sget-object v0, Lz4/e;->a:Lz4/e;

    invoke-virtual {v0, p1}, Lz4/e;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;->w0(Lcom/miui/permcenter/privacycenter/usage/AppPermissionUsageActivity;Ljava/util/Map;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

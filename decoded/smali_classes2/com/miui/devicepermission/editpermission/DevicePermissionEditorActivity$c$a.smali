.class final Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.miui.devicepermission.editpermission.DevicePermissionEditorActivity$switchAll$1$1"
    f = "DevicePermissionEditorActivity.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

.field final synthetic d:I


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lz4/a;",
            ">;",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;",
            "I",
            "Ltj/d<",
            "-",
            "Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iput p3, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->d:I

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

    new-instance p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    iget v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->d:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;-><init>(Ljava/util/ArrayList;Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;ILtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/a;

    iget-object v1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-virtual {v0}, Lz4/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lz4/a;->c()I

    move-result v4

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->c:Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;

    invoke-static {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;->g0(Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionEditorActivity$c$a;->d:I

    invoke-static/range {v1 .. v6}, Lz4/b;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

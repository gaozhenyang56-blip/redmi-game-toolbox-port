.class final Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;


# direct methods
.method constructor <init>(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lz4/a;Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lz4/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/a;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p1}, Lz4/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lz4/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lz4/a;->c()I

    move-result v1

    iget-object v2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-virtual {v2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-virtual {p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->e0()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-static {p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->a0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)I

    move-result p2

    if-eq v1, p2, :cond_0

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lz4/a;->d()Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-static {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lz4/a;->e()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-static {v0}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->b0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->l0(I)V

    iget-object p2, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->m0(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a:Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;

    invoke-static {p1}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;->c0(Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment;)V

    :cond_1
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ltj/d;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz4/a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/devicepermission/editpermission/DevicePermissionModifyFragment$b$a;->a(Lz4/a;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

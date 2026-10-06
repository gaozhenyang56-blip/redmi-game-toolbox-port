.class public Lcb/a;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb/a$b;,
        Lcb/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lcb/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Lcb/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/a;->a:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/a;->b:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lcb/a;->c:Landroidx/lifecycle/c0;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/a;->a:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public b()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcb/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/a;->b:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public c()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcb/a$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcb/a;->c:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public varargs d([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcb/a$a;

    invoke-direct {v0, p1}, Lcb/a$a;-><init>([Ljava/lang/String;)V

    iget-object p1, p0, Lcb/a;->a:Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcb/a$a;->a(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcb/a;->b:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcb/a;->a:Landroidx/lifecycle/c0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    iget-object v0, p0, Lcb/a;->b:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a$a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcb/a$a;->a(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcb/a;->b:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcb/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a$b;

    if-nez v0, :cond_0

    new-instance v0, Lcb/a$b;

    invoke-direct {v0}, Lcb/a$b;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcb/a$b;->a(I)V

    iget-object p1, p0, Lcb/a;->c:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void
.end method

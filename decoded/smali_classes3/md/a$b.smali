.class Lmd/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lmd/a;


# direct methods
.method private constructor <init>(Lmd/a;)V
    .locals 0

    iput-object p1, p0, Lmd/a$b;->a:Lmd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmd/a;Lmd/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmd/a$b;-><init>(Lmd/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "level"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "plugged"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->m(Lmd/a;)I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->o(Lmd/a;)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {}, Lx4/z1;->r()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v5}, Lmd/a;->p(Lmd/a;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_1
    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->o(Lmd/a;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->m(Lmd/a;)I

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->q(Lmd/a;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lde/j;->b(Landroid/content/Context;)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->r(Lmd/a;)V

    :cond_4
    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3, v0, v2, p1}, Lmd/a;->s(Lmd/a;III)V

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-virtual {v3}, Lnd/a;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v3}, Lmd/a;->m(Lmd/a;)I

    move-result v3

    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v1}, Lmd/a;->t(Lmd/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lde/j;->O(Landroid/content/Context;)V

    :cond_5
    iget-object v1, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v1, v0}, Lmd/a;->u(Lmd/a;I)I

    iget-object v0, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v0, v2}, Lmd/a;->v(Lmd/a;I)I

    iget-object v0, p0, Lmd/a$b;->a:Lmd/a;

    invoke-static {v0, p1}, Lmd/a;->n(Lmd/a;I)I

    return-void
.end method

.class public Lw4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lw4/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    iput-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->a(Lw4/b;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    iput-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->a(Lw4/b;Landroid/content/Context;)Landroid/content/Context;

    iget-object p1, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {p1, p2}, Lw4/b;->b(Lw4/b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Lw4/b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    return-object v0
.end method

.method public b(Landroid/app/PendingIntent;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->c(Lw4/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->t(Lw4/b;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->e(Lw4/b;Z)Z

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->g(Lw4/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {p1, p2}, Lw4/b;->h(Lw4/b;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public f(Landroid/app/PendingIntent;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->z(Lw4/b;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->l(Lw4/b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->b(Lw4/b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public i(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->k(Lw4/b;Z)Z

    return-object p0
.end method

.method public j(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->m(Lw4/b;Z)Z

    return-object p0
.end method

.method public k(Landroid/os/Bundle;)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->d(Lw4/b;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object p0
.end method

.method public l(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->i(Lw4/b;I)I

    return-object p0
.end method

.method public m(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->w(Lw4/b;I)I

    return-object p0
.end method

.method public n(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->r(Lw4/b;I)I

    return-object p0
.end method

.method public o(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->n(Lw4/b;I)I

    return-object p0
.end method

.method public p(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->o(Lw4/b;Z)Z

    return-object p0
.end method

.method public q(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->u(Lw4/b;I)I

    return-object p0
.end method

.method public r(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->f(Lw4/b;I)I

    return-object p0
.end method

.method public s(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->s(Lw4/b;Z)Z

    return-object p0
.end method

.method public t(Z)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->j(Lw4/b;Z)Z

    return-object p0
.end method

.method public u(Landroid/content/Intent;I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->x(Lw4/b;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object p1, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {p1, p2}, Lw4/b;->y(Lw4/b;I)I

    return-object p0
.end method

.method public v(I)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->v(Lw4/b;I)I

    return-object p0
.end method

.method public w(ZI)Lw4/b$b;
    .locals 1

    iget-object v0, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {v0, p1}, Lw4/b;->p(Lw4/b;Z)Z

    iget-object p1, p0, Lw4/b$b;->a:Lw4/b;

    invoke-static {p1, p2}, Lw4/b;->q(Lw4/b;I)I

    return-object p0
.end method

.class Lbi/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbi/k;


# direct methods
.method constructor <init>(Lbi/k;)V
    .locals 0

    iput-object p1, p0, Lbi/k$a;->a:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lbi/k;->E(Lcom/qti/izat/IIzatService;)Lcom/qti/izat/IIzatService;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbi/k;->C(Lbi/k;Z)Z

    invoke-static {}, Lbi/k;->D()Lcom/qti/izat/IIzatService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->a(Lbi/k;)V

    :cond_0
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->b(Lbi/k;)Lbi/k$i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->I()Lbi/b;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->c(Lbi/k;)V

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->d(Lbi/k;)V

    :cond_1
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->e(Lbi/k;)Lbi/k$j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->J()Lbi/c;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->f(Lbi/k;)V

    :cond_2
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->g(Lbi/k;)Lbi/k$h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->H()Lbi/a;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->h(Lbi/k;)V

    :cond_3
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->i(Lbi/k;)Lbi/k$l;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->M()Lbi/n;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->j(Lbi/k;)V

    :cond_4
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->k(Lbi/k;)Lbi/k$k;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->K()Lbi/h;

    :cond_5
    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->l(Lbi/k;)Lbi/k$p;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->m(Lbi/k;)Lbi/k$o;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->n(Lbi/k;)Lbi/k$n;

    iget-object v0, p0, Lbi/k$a;->a:Lbi/k;

    invoke-static {v0}, Lbi/k;->o(Lbi/k;)Lbi/k$m;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onBindingDied"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lbi/k$a;->a()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lbi/k$a;->a:Lbi/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lbi/k;->C(Lbi/k;Z)Z

    invoke-static {p2}, Lcom/qti/izat/IIzatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/izat/IIzatService;

    move-result-object p1

    invoke-static {p1}, Lbi/k;->E(Lcom/qti/izat/IIzatService;)Lcom/qti/izat/IIzatService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lbi/k;->B()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lbi/k$a;->a()V

    return-void
.end method

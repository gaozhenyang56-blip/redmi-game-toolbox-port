.class Lp7/h$b;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/h;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lp7/h;


# direct methods
.method constructor <init>(Lp7/h;)V
    .locals 0

    iput-object p1, p0, Lp7/h$b;->a:Lp7/h;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lp7/h$b;)V
    .locals 0

    invoke-direct {p0}, Lp7/h$b;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lp7/h$b;->a:Lp7/h;

    invoke-static {v0}, Lp7/h;->n(Lp7/h;)Lr7/d;

    move-result-object v1

    invoke-static {v0, v1}, Lp7/h;->m(Lp7/h;Landroid/view/View;)V

    iget-object v0, p0, Lp7/h$b;->a:Lp7/h;

    invoke-static {v0}, Lp7/h;->o(Lp7/h;)Lr7/d;

    move-result-object v1

    invoke-static {v0, v1}, Lp7/h;->m(Lp7/h;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lp7/h$b;->a:Lp7/h;

    invoke-static {p1}, Lp7/h;->k(Lp7/h;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lp7/i;

    invoke-direct {v0, p0}, Lp7/i;-><init>(Lp7/h$b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class Lp7/h$c;
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

    iput-object p1, p0, Lp7/h$c;->a:Lp7/h;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lp7/h$c;->a:Lp7/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lp7/h;->p(Lp7/h;Z)V

    iget-object p1, p0, Lp7/h$c;->a:Lp7/h;

    invoke-static {p1, v0}, Lp7/h;->q(Lp7/h;Z)V

    return-void
.end method

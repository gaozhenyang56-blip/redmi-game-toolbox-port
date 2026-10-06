.class public final Lcom/miui/gamebooster/guide/CasualModeGuide$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/guide/CasualModeGuide;->D(Lcom/miui/gamebooster/guide/CasualModeGuide$a;IIZLjava/lang/String;ILak/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Landroid/widget/FrameLayout;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;ZILandroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    iput-boolean p2, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->b:Z

    iput p3, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->c:I

    iput-object p4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->d:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->e:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b()Ls8/h;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ls8/h;->c0(ZZ)V

    iget-boolean p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->b:Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gamebooster/guide/CasualModeGuide;->a:Lcom/miui/gamebooster/guide/CasualModeGuide;

    iget p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->c:I

    invoke-static {v0, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->f(Lcom/miui/gamebooster/guide/CasualModeGuide;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->d:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->f()Z

    move-result v2

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->d()I

    move-result v3

    iget-object v4, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->e:Ljava/lang/String;

    iget v5, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->c:I

    new-instance v6, Lcom/miui/gamebooster/guide/CasualModeGuide$e$a;

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-direct {v6, p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$e$a;-><init>(Lcom/miui/gamebooster/guide/CasualModeGuide$a;)V

    invoke-static/range {v0 .. v6}, Lcom/miui/gamebooster/guide/CasualModeGuide;->j(Lcom/miui/gamebooster/guide/CasualModeGuide;Landroid/view/ViewGroup;ZILjava/lang/String;ILak/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->e()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide;->m(Landroid/view/WindowManager;)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "animation"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/gamebooster/guide/CasualModeGuide$e;->a:Lcom/miui/gamebooster/guide/CasualModeGuide$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/guide/CasualModeGuide$a;->b()Ls8/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Ls8/h;->c0(ZZ)V

    return-void
.end method

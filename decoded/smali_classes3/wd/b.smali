.class public Lwd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lme/d;->h()Lme/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/d;->m(Landroid/content/Context;)V

    invoke-static {p1}, Lme/f;->g(Landroid/content/Context;)V

    invoke-static {}, Lod/c;->b()Lod/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lod/c;->f(Landroid/content/Context;)V

    const-string p1, "ChargeInit"

    const-string v0, "init complete"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

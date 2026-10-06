.class public Lbe/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lgd/c;->v()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v0}, Lme/t;->O(I)V

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object v0

    invoke-virtual {v0}, Lme/t;->p()I

    move-result v0

    invoke-static {v0}, Lgd/c;->m1(I)V

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lme/t;->j(Landroid/content/Context;)Lme/t;

    move-result-object p1

    invoke-virtual {p1, v1}, Lme/t;->O(I)V

    return-void
.end method

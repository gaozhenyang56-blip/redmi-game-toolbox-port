.class public Lcom/miui/autotask/bean/q;
.super Lcom/miui/autotask/bean/n;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/bean/n;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/miui/autotask/bean/n;->f(I)V

    return-void
.end method


# virtual methods
.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/bean/q;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/autotask/bean/q;->d:Z

    return v0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/bean/q;->e:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/bean/q;->d:Z

    return-void
.end method

.class public Lcom/miui/antivirus/model/j;
.super Lcom/miui/antivirus/model/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/model/j$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antivirus/model/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/model/j;->y:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/antivirus/model/j;->z:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/j;->A:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/j;->B:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/j;->C:Z

    sget-object v0, Lcom/miui/antivirus/model/d$c;->d:Lcom/miui/antivirus/model/d$c;

    iput-object v0, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    return-void
.end method


# virtual methods
.method public W()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->z:Z

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Lcom/miui/antivirus/model/j;->A:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/miui/antivirus/model/j;->B:Z

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/miui/antivirus/model/j;->C:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->C:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->y:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->B:Z

    return v0
.end method

.method public a0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->z:Z

    return v0
.end method

.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/j;->A:Z

    return v0
.end method

.method public c0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/j;->C:Z

    return-void
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antivirus/model/j;->W()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/j;->y:Z

    return-void
.end method

.method public e0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/j;->B:Z

    return-void
.end method

.method public f0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/j;->z:Z

    return-void
.end method

.method public g0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/j;->A:Z

    return-void
.end method
